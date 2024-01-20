import socket
import logging
from dns.resolver import Resolver
from dnslib import DNSRecord, QTYPE, RD, SOA, DNSHeader, RR, A

dns_resolver = Resolver()
dns_resolver.nameservers = ["8.8.8.8", "8.8.4.4"]

# 用于配置日志记录的函数
def logger_config(log_path,logging_name):
    logger = logging.getLogger(logging_name)
    logger.setLevel(level = logging.DEBUG)
    handler = logging.FileHandler(log_path, encoding='UTF-8')
    handler.setLevel(logging.INFO)
    formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
    handler.setFormatter(formatter)
    console = logging.StreamHandler()
    console.setLevel(logging.DEBUG)
    logger.addHandler(handler)
    logger.addHandler(console)
    return logger


def get_ip_from_domain(domain):
    domain = domain.lower().strip()# 对域名进行规范化处理的操作（转化为小写字母并移除开头和结尾的空格）
    try:
        # 使用query方法查询域名的A记录（即与域名对应的IP地址），[0]表示查询结果中的第一个记录（通常只有一个A记录），然后用to_text方法将结果转换为字符串形式
        # 如果查询成功返回域名的IP地址，如果查询失败返回NONE
        return dns_resolver.resolve(domain, 'A')[0].to_text()
    except:
        return None
 
# income_record:传入的DNS请求报文，包含客户端的查询信息
# 第一行创建一个新的的DNSHeader对象id和bitmap属性与请求报文一致，qr=1表示这是回复报文
# 第二行将返回码设置为0，表示未找到相应记录
# 第三行创建DNSRecord对象，将上述DNSHeader对象传入，构建一个回复报文
def reply_for_not_found(income_record):  
    header = DNSHeader(id = income_record.header.id, bitmap = income_record.header.bitmap, qr = 1)
    header.set_rcode(0)
    record = DNSRecord(header, q =income_record.q)
    return record

def reply_for_A(income_record, ip, ttl = None):
    r_data = A(ip)
    header = DNSHeader(id = income_record.header.id, bitmap = income_record.header.bitmap, qr = 1)
    domain = income_record.q.qname
    # 获取查询的域名，通过QTYPE.reverse.get('A')获取查询类型为A记录的整数值，如果获取不到，则用.q.qtype作为查询类型（对应的整数值）
    query_type_int = QTYPE.reverse.get('A') or income_record.q.qtype
    # RR是一个函数类，用于创建DNS记录，domain是查询的域名，query_type_int是查询类型，r_data是资源数据（这里是IP地址），ttl是生存时间
    # 创建了一个A记录对象'a'，构建了一个完整的DNS记录
    record = DNSRecord(header, q = income_record.q, a = RR(domain, query_type_int, rdata = r_data, ttl = ttl))
    return record

# 一个DNS请求处理函数，它接受一个UDP套接字对象，收到的DNS消息和请求的地址作为参数
def dns_handler(s, message, address):
    try:
        income_record = DNSRecord.parse(message)
    except:
        logger.error('from %s, parse error' % address)
        return 
    # 首先尝试解析收到的DNS消息，如果失败则记录错误并返回
    #然后根据解析结果确定查询类型
    try:
        qtype = QTYPE.get(income_record.q.qtype)
    except:
        qtype = 'unknown'
 	# 提取查询的域名，并去除点号，得到domain
    domain = str(income_record.q.qname).strip('.')
    info = '%s -- %s, from %s.' % (qtype, domain, address)
	
    #如果查询类型是A，则调用get_ip_from_domain函数获取域名对应的IP地址。如果存在IP地址，则使用reply_for_A函数构建一个回复消息response，并将其发送回请求的地址。如果查询类型不是'A'，或者域名对应的IP地址不存在，则使用reply_for_not_found函数构建一个表示未找到的回复消息，并将其发送回请求的地址。
    if domain == 'baidu.com': 
        response = reply_for_A(income_record, ip = '127.0.0.1' , ttl = 0)
        s.sendto(response.pack(), address)
        return logger.info(info)
    else:
        if qtype == 'A' :
            ip = get_ip_from_domain(domain)
            if ip:
                response = reply_for_A(income_record, ip = ip, ttl = 0)
                s.sendto(response.pack(), address)
                return logger.info(info)
            else:
                response = reply_for_not_found(income_record)
                s.sendto(response.pack(), address)
                return logger.info(info)

# 主程序部分使用一个UDP套接字对象绑定到53端口（DNS默认端口），输出日志信息表示DNS已经启动，进入无限循环，接收到UDP消息后调用dns_handler函数处理
if __name__ == '__main__':
    logger = logger_config(log_path = 'log.txt', logging_name = 'DNS_Server')
    udp_sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_sock.bind(('', 53))
    logger.info('DNS server is started.')

    while True:
        message, address = udp_sock.recvfrom(8192)
        dns_handler(udp_sock, message, address)