with open(r'zadddd4.txt','w') as fil:
    for i in range(4):
        n = input()
        fil.write(n+'\n')
with open(r'zadddd4.txt','r') as fil:
    su=0
    for i in range(1,5):
        if i%2==0:
            h = fil.readline()
            h = h.replace('\n','')
            h = float(h)
            su = h+su
        else:
            h = fil.readline()
print('Сумма четных элементов: ',su)
            
            