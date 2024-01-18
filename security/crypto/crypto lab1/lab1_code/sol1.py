from Crypto.Util.number import *

p = 22874236765582512818346580947708667745188778288884101219751361699392149989458510773797824610944321686257783426829474659298957510513578978620495392070614563
g = 12992966891086556058043617860106952736598816342586014149483372202900857379441187722193997976148795991526844581149548123484519204440052676174785545786320297
c = 4006948706881298103593084841644986324930377713436980291670378524564662999515313693489885343780490631115314181593435331209712709857825836348345723998675361

factors,exponents = zip(*factor(p-1))#对p-1作素因数分解，并用zip（*）对factor取转置，分别存入factors,exponents变量中
order = p-1
## 但注意的是g不一定是生成元，所以要确定阶数
for i in factors:
    if pow(g,(p-1)//i,p) == 1:
        order //= i
factors,exponents = zip(*factor(order))
primes = [factors[i]^exponents[i] for i in range(len(factors))][:-1]#得到素因数分解，但需要注意的是经初步质因数分解后发现有一个数非常大，要单独拿出来
dlogs = []
for fac in primes:
    t = (order) // int(fac)
    dlog = discrete_log(pow(c,t,p),pow(g,t,p))#sage求离散对数
    dlogs += [dlog]

x = crt(dlogs,primes)#中国剩余定理得到结果
print(long_to_bytes(x))#转化成字符，得到flag