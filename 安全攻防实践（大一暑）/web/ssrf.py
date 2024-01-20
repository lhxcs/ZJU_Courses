import http.server as BaseHTTPServer
import socket
import re
import requests
from urllib.parse import urlparse
from socket import inet_aton
from struct import unpack
from requests.utils import requote_uri

def check_ssrf(url):
    print(url)
    hostname = urlparse(url).hostname

    def ip2long(ip_addr):
        return unpack("!L", inet_aton(ip_addr))[0]

    def is_inner_ipaddress(ip):
        ip = ip2long(ip)
        return ip2long('127.0.0.0') >> 24 == ip >> 24 or \
                ip2long('172.16.0.0') >> 20 == ip >> 20 or \
                ip2long('192.168.0.0') >> 16 == ip >> 16

    try:
        if not re.match(r"^https?://.*/.*$", url):
            raise BaseException("url format error")
        ip_address = socket.getaddrinfo(hostname, 'http')[0][4][0]
        print(ip_address)
        if is_inner_ipaddress(ip_address):
            raise BaseException("inner ip address attack")
        return True, "success"
    except BaseException as e:
        return False, str(e)
    except:
        return False, "unknow error"

def safe_request_url(url, **kwargs):
    def _request_check_location(r, *args, **kwargs):
        if not r.is_redirect:
            return
        url = r.headers['location']

        # The scheme should be lower case...
        parsed = urlparse(url)
        url = parsed.geturl()

        # Facilitate relative 'location' headers, as allowed by RFC 7231.
        # (e.g. '/path/to/resource' instead of 'http://domain.tld/path/to/resource')
        # Compliant with RFC3986, we percent encode the url.
        if not parsed.netloc:
            url = urljoin(r.url, requote_uri(url))
        else:
            url = requote_uri(url)

        succ, errstr = check_ssrf(url)
        if not succ:
            raise requests.exceptions.InvalidURL("SSRF Attack: %s" % (errstr, ))

    success, errstr = check_ssrf(url)
    if not success:
        raise requests.exceptions.InvalidURL("SSRF Attack: %s" % (errstr,))

    all_hooks = kwargs.get('hooks', dict())
    if 'response' in all_hooks:
        if hasattr(all_hooks['response'], '__call__'):
            r_hooks = [all_hooks['response']]
        else:
            r_hooks = all_hooks['response']

        r_hooks.append(_request_check_location)
    else:
        r_hooks = [_request_check_location]

    all_hooks['response'] = r_hooks
    kwargs['hooks'] = all_hooks
    return requests.get(url, **kwargs)


class APIHandler(BaseHTTPServer.BaseHTTPRequestHandler):
    def index(self):
        data=b"<img src='/https://www.zjusec.com/static/img/hack.png'><a href='/showcode'>Show Code</a>"
        self.wfile.write(("HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nContent-Length: %d\r\n\r\n"%len(data)).encode("ascii"))
        self.wfile.write(data)
        
    def showcode(self):
        data=open("run.py","rb").read()
        self.wfile.write(("HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\nContent-Length: %d\r\n\r\n"%len(data)).encode("ascii"))
        self.wfile.write(data)
    
    def flag(self):
        from flag import flag
        if self.client_address[0] != "127.0.0.1":
            data = b'No No No'
        else:
            data = flag
        self.wfile.write(("HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\nContent-Length: %d\r\n\r\n"%len(data)).encode("ascii"))
        self.wfile.write(data)
    
    def do_GET(self):
        if self.path=="/":
            return self.index()
        elif self.path=="/showcode":
            return self.showcode()
        elif self.path=="/flag":
            return self.flag()
        try:
            url=self.path[1:]
            x=safe_request_url(url)
            self.wfile.write(b"HTTP/1.1 200 OK\r\nContent-Type: image/png\r\n\r\n")
            self.wfile.write(x.content)
        except Exception as e:
            self.wfile.write(("HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\nError:%s"%e).encode("utf-8"))


if __name__=="__main__":
    port=9999
    print("Running on port %d"%port)
    server_address = ('0.0.0.0', port)
    httpd = BaseHTTPServer.HTTPServer(server_address, APIHandler)
    httpd.serve_forever()