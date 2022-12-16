import random
f = open(r'C:\Users\yarov\OneDrive\Рабочий стол\Python\input.txt','w') 
for i in range(100):
    n = random.randint(0,337)
    n = str(n)
    f.writelines(n+'\n')
f.close()
g= open(r'input.txt','r+') 
h=g.readlines()
h=list(map(int,h))
ma=max(h)
mi=min(h)
mah = str(ma)
mih = str(mi)
g.close()
t = open(r'output.txt','w')
t.write(mah+'\n')
t.write(mih)
t.close()



