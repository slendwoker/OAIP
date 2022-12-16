with open(r"zadanie3.txt", "w+") as fil:
    for i in range(7):
        b=input()
        fil.write(b+'\n')
f=open(r"zadanie3.txt", "r+")
mlist=[]
nlist=[]
for i in range(1,8):
    if i%2==0:
        g=f.readline()
        mlist.append(g)
    else:
        g=f.readline()
        nlist.append(g)
f.close()
with open(r"nechet.txt", "w") as gin:
    gin.writelines(nlist)
with open(r"chet.txt", "w") as hin:
    hin.writelines(mlist)

