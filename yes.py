with open(r'c:users\yarov\Onedrive\Рабочий стол\python\pis.txt','w') as fi:
    for i in range(5):
        n = input()
        fi.write(n+'\n')
with open(r'c:users\yarov\Onedrive\Рабочий стол\python\pis.txt','r+') as fi:
    massiv = []
    for i in range(5):
        y = fi.readline()
        y = str(y)
        f = y.replace('\n','')
        massiv.append(f)
    v = massiv[massiv.index(min(massiv))]
    u = massiv[massiv.index(max(massiv))]
print(v,u)
fi.truncate(0)
fi.seek(0)
for i in range(5):
    b=str(massiv[i])
    fi.write(b+'\n')
