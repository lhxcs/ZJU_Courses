# !/usr/bin/python3
# @File: cracker.py.py
# --coding:utf-8--
# @Author:kinni
# @Time:  2019年05月18日 11:35:28
# 说明:维吉尼亚密码的唯密文破解——交互重合指数
def virginiaCrack(cipherText): # 解密函数
    length = getKeyLen(cipherText) #得到密钥长度
    key = getKey(cipherText,length) #找到密钥
    keyStr = ''
    for k in key:
        keyStr+=k
    print('the key:',keyStr)
    plainText = ''
    index = 0
    for ch in cipherText:
        c = chr((ord(ch)-ord(key[index%length])+26)%26+97)  #字母的ascii值与对该位置加密的密钥字母，相对位移
        plainText += c
        index+=1
    return plainText
def openfile(fileName): # 读文件
    file = open(fileName,'r')
    text = file.read()
    file.close();
    text = text.replace('\n','')
    return text

def getKeyLen(cipherText): # 获取密钥长度
    keylength = 1
    maxCount = 0
    for step in range(3,10): # 循环密钥长度
        count = 0
        for i in range(len(cipherText)-step): #range(step,len(cipherText)-step):
            if cipherText[i] == cipherText[i+step]:
                 count += 1
        if count>maxCount:
            maxCount = count
            keylength = step
    return keylength

def getKey(text,length): # 获取密钥
    key = [] # 定义空白列表用来存密钥
    alphaRate = [0.082, 0.015,0.028,0.043,0.127,
              0.022,0.02,0.061,0.07,0.002,0.008,
              0.04,0.024,0.067,0.075,0.019,0.001,
              0.06,0.063,0.091,0.028,0.01,0.023,0.001,0.02,0.001]
    #alphaRate =[0.08167,0.01492,0.02782,0.04253,0.12705,0.02228,0.02015,0.06094,0.06996,0.00153,0.00772,0.04025,0.02406,0.06749,0.07507,0.01929,0.0009,0.05987,0.06327,0.09056,0.02758,0.00978,0.02360,0.0015,0.01974,0.00074]
    matrix =textToList(text,length)   #将明文按照密钥长度分组成二位列表
    for i in range(length):
        w = [row[i] for row in matrix] #获取每组密文中第i位的密文    这都是用同一个字母加密的
        li = countList(w)    #计算里面的字母频率
        powLi = [] #交互重合指数
        for j in range(26):
            Sum = 0.00000
            for k in range(26):
                Sum += alphaRate[k]*li[k]  #   Ic的值Sum[k] += alphaRate[k]*li[k+j] 的话  就不用后面的切片操作
            powLi.append(Sum)
            li = li[1:]+li[:1]#循环移位  向左移一位
        Abs = 1
        ch = ''
        for j in range(len(powLi)):
             if abs(powLi[j] -0.065546)<Abs: # 找出最接近英文字母重合指数的项
                 Abs = abs(powLi[j] -0.065546) # 保存最接近的距离，作为下次比较的基准
                 ch = chr(j+97)
        key.append(ch)
    return key

def countList(lis): # 统计字母频率
    li = []
    alphabet = [chr(i) for i in range(97,123)]
    for c in alphabet:
        count = 0
        for ch in lis:
            if ch == c:
                count+=1
        li.append(count/len(lis))
    return li        #返回字母表每个字母的出现概率

def textToList(text,length): # 根据密钥长度将密文分组
    textMatrix = []   #二维表  里面添加分组数个分组  每个分组中都是按照密钥加密的
    row = []     #行  = 分组   每个row都是按照密钥加密的   长度为密钥的元素个数
    index = 0    #从0开始
    for ch in text:
        row.append(ch)
        index += 1
        if index % length ==0:
            textMatrix.append(row)
            row = []
    return textMatrix

if __name__ == '__main__':
    cipherText = openfile(r'cipher.txt') # 这里要根据文档目录的不同而改变
    plainText= virginiaCrack(cipherText.lower())
    print('the plainText:\n',plainText)
