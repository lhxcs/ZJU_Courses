# -*- coding: utf-8 -*-
import base64
 
def get_message():
	print("输入你的信息： ")
	s=input()
	return s
 
def get_key():
	print("输入你的密钥： ")
	key=input()
	if key=='':
		key="不要输入空的 key 值"
	return key
 
def init_box(key):
	"""
	S盒
	"""
	s_box=list(range(256))	#我这里没管秘钥小于256的情况，小于256应该不断重复填充即可，这里完成了 C 实现中的 for(i=0;i<256;i++) prc4->s_box[i] = i;
	j=0
	for i in range(256):
		j=(j+s_box[i] + ord(key[i % len(key)])) % 256	#这里把 C 实现中的 prc4->t_box[i] = key[i % keylen];和j=(j+prc4->s_box[i]+prc4->t_box[i])%256;合并在了一起。
		s_box[i],s_box[j] = s_box[j],s_box[i]
	#print(type(s_box)) #可以输出 s_box 来看是否随机混乱的
	return s_box
 
def ex_encrypt(plain,box,mode):
	"""
    利用PRGA生成秘钥流并与密文字节异或，加解密同一个算法
    """
	if mode == '2':
		while True:
			c_mode=input("输入你的解密模式：base64 or ordinary\n")
			if c_mode == 'base64':
				plain=base64.b64decode(plain)
				plain=bytes.decode(plain)				#因为返回的是解码过的  bytes，所以需要再用 decode 解码成字符串。
				break
			elif c_mode == 'ordinary':
				break
			else:
				print("输入不合法，请重新输入")
				continue
	
	res=[]
	i=j=0
	for s in plain:						#与 C 实现无太大差异
		i=(i+1)%256
		j=(j+box[i])%256
		box[i],box[j]=box[j],box[i]
		t=(box[i]+box[j]) % 256
		k=box[t]
		res.append(chr(ord(s)^k))
 
	cipher="".join(res)
    #print(cipher)
 
#根据选择进行输出，至于是明文还是密文得看用户决定
	if mode == '1':
        # 化成可视字符需要编码
		print("加密后的输出（没经过任何编码）")
		print(cipher)
        # base64的目的也是为了变成可见字符
		print("base64后的编码")
		print(str(base64.b64encode(cipher.encode('utf-8')),'utf-8'))
	if mode == '2':
		print("解密后的密文")
		print(cipher)
 
def get_mode():
	print("请选择加密或者解密")
	print("1.Encrypt")
	print("2.Decrypt")
 
	mode = input()
 
	if mode == '1':			#加密解密虽同源，但是由于不能直接用 =='1' or '2'，所以还是得分开写
		message = get_message()
		key = get_key()
		box = init_box(key)
		ex_encrypt(message,box,mode)
	elif mode == '2':			#由于异或运算的对合性，RC4加密解密使用同一套算法。
		message = get_message()
		key = get_key()
		box = init_box(key)
		ex_encrypt(message,box,mode)
	else:
		print("输入有误！ ")
 
if __name__ == '__main__':
	while True:
		get_mode()