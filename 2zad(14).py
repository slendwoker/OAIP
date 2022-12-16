with open(r"zadanie2.txt", "w+") as f:
    for i in range(5):
        g=input()
        f.write(g+'\n')
with open("zadanie2.txt", "r+") as n:
    k=n.readlines()
    j=0
    mlist=[]
    h=''
    for i in k:
        if len(i)>j:
            j=len(i)
    for i in k:
        if len(i)==j:
            h=i+'\n'+h
with open(r"zadanie228.txt",'w') as con:
    con.write(h)

