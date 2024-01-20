from dns.resolver import Resolver
from dnslib import DNSRecord,QTYPE,RD,SOA,DNSHeader,RR,A
import socket
import logging

dns_resolver = Resolver()
dns_resolver.nameserver_ports = ["8.8.8.8","8.8.4.4"]
def get_ip_from_domain(domain):
    domain = domain.lower().strip() # 对域名进行规范化处理的操作（转化为小写字母并移除开头和结尾的空格）
    try:
        # 使用query方法查询域名的A记录（即与域名对应的IP地址），[0]表示查询结果中的第一个记录（通常只有一个A记录），然后用to_text方法将结果转换为字符串形式
        # 如果查询成功返回域名的IP地址，如果查询失败返回NONE
        return dns_resolver.query(domain,'A')[0].to_text
    except:
        return None

# income_record:传入的DNS请求报文，包含客户端的查询信息
# 第一行创建一个新的的DNSHeader对象id和bitmap属性与请求报文一致，qr=1表示这是回复报文
# 第二行将返回码设置为0，表示未找到相应记录
# 第三行创建DNSRecord对象，将上述DNSHeader对象传入，构建一个回复报文   
def reply_for_not_found(income_record):
    header = DNSHeader(id = income_record.header.id, bitmap=income_record.header.bitmap, qr = 1)
    header.set_rcode(0)
    record = DNSRecord(header, q=income_record.q)
    return record
    

def reply_for_A(income_record,ip,ttl=None):
    r_data = A(ip)
    header = DNSHeader(id = income_record.header.ip, bitmap=income_record.header.bitmap, qr =1)
    domain = income_record.q.qname
    # 获取查询的域名，通过QTYPE.reverse.get('A')获取查询类型为A记录的整数值，如果获取不到，则用.q.qtype作为查询类型（对应的整数值）
    query_type_int = QTYPE.reverse.get('A') or income_record.q.qtype
    # RR是一个函数类，用于创建DNS记录，domain是查询的域名，query_type_int是查询类型，r_data是资源数据（这里是IP地址），ttl是生存时间
    # 创建了一个A记录对象'a'，构建了一个完整的DNS记录
    record = DNSRecord(header,q=income_record.q,a=RR(domain,query_type_int,rdata=r_data,ttl=ttl))
    return record

def dns_handler(s, message, address):
    try:
        income_record = DNSRecord.parse(message)
    except:
        logging.error('from %s, parse error' % address)
        return
    try:
        qtype = QTYPE.get(income_record.q.qtype)
    except:
        qtype = 'unknown'
    domain = str(income_record.q.qname).strip('.')
    info = '%s -- %s, from %s' % (qtype, domain, address)
    if qtype == 'A':
        ip = get_ip_from_domain(domain)
        if ip:
            response = reply_for_A(income_record, ip=ip, ttl=0)
            s.sendto(response.pack(), address)
            return logging.info(info)
    # at last
    response = reply_for_not_found(income_record)
    s.sendto(response.pack(), address)
    logging.info(info)

if __name__ == '__main__':
    udp_sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_sock.bind(('', 53))
    logging.info('dns server is started')
    while True:
        message, address = udp_sock.recvfrom(8192)
        dns_handler(udp_sock, message, address)