from random import randint
with open(r'locmax.txt','r+') as f:
    for i in range(8):
        n = randint(1,20)
        h = str(n)
        g = f.writelines(h+'\n')
with open(r'locmax.txt','r') as f:
    mlist = []
    for i in range(8):
        h = f.readline()
        h = h.replace('\n','')
        h = float(h)
        mlist.append(h)
    for i in range(8):
        if mlist(i-1)<mlist(i) and mlist(i)>mlist(i+1):
            y = mlist(i)
print(i)        