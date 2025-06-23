from modules import dns, http, cfg
import argparse
import sys
import yaml
import netifaces
import threading
import re
from copy import deepcopy
import logging
from logging.handlers import RotatingFileHandler
from logging import handlers
import os

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description='DNS rebinder')
	parser.add_argument("--js", "-j", type=str, help="JS-exploit to serve", required=True)
	parser.add_argument("--html", "-H", type=str, help="HTML-file to serve", required=True)
	parser.add_argument("--config", "-c", type=str, help="Config file (json)", required=True)
	parser.add_argument("--ip", "-i", type=str, help="IP to accept traffic at (web server)", default="0.0.0.0")
	parser.add_argument("--interface", "-I", type=str, help="Interface to use when blocking traffic", default="eth0")
	parser.add_argument("--port", "-p", type=int, help="Port to use for web server", default=80)
	parser.add_argument("--firewall", "-f", type=str, help="Pass a filename if you want to backup iptables", default=None)
	args = vars(parser.parse_args())


	log = logging.getLogger('')
	log.setLevel(logging.DEBUG)
	format = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")

	ch = logging.StreamHandler(sys.stdout)
	ch.setFormatter(format)
	log.addHandler(ch)

	fh = handlers.RotatingFileHandler("logfile.log", maxBytes=(1048576*5), backupCount=7)
	fh.setFormatter(format)
	log.addHandler(fh)

	args["js"] = os.path.abspath(args["js"])
	args["html"] = os.path.abspath(args["html"])
	dnsServer = dns.DNSServer()
	fname = args["config"]
	port = args["port"]
	ip = args["ip"]
	
	with open(fname, "r") as f:
		data = str(f.read())
		try:
			config = yaml.safe_load(data)
		except:
			logging.error("Unable to load JSON config")
			sys.exit(1)
	
	for c in config.get("domains", []):
		if "domain" in c:
			i = c.get("ip")
			dnsServer.add_resolve(c.get("domain"), i, c.get("alt"))
			if "root" in c and c["root"] == True:
				config["root"] = c["domain"]
		elif "wildcard" in c:
			i = c.get("ip")
			try:
				wc = re.compile(c.get("wildcard"))
				dnsServer.add_wildcard(wc, i, c.get("alt"))
			except:
				logging.warning("Unable to add wildcard object from JSON: %s", c)
		else:
			logging.warning("JSON object is not valid: %s", c)
	
	config["args"] = deepcopy(args)
	config["iptables_modified"] = False

	if args["interface"] not in netifaces.interfaces():
		logging.error("Given network interface '%s' does not exist on this host", args["interface"])
		sys.exit(1)

	if args.get("firewall") != None:
		f = args["firewall"]
		p = os.path.dirname(f)
		ff = os.path.basename(f)

		# We don't allow any special characters in filename (except '.')
		ff = ''.join(e for e in ff if e.isalnum() or e=='.')
		if os.path.isdir(p):
			config["iptables"] = os.path.join(p, ff)
			os.system("iptables-save > " + config["iptables"]);
		else:
			logging.error("Unable to backup iptables, path given: %s", f)
			sys.exit(1)

	cfg.init(config, dnsServer)

	uThread = threading.Thread(target = dns.udpServer, args = ("0.0.0.0", 53, dnsServer, ))
	uThread.setDaemon(True)
	uThread.start()


	http.serve(args["ip"], args["port"])
	