
f = open(r'3.in.txt','r')
g = int(f.readline())
h = 0
j=0
for i in range(g):
    h=0
    mlist =[]
    for d in range(i - 1, 1, -1):
        if (i% d == 0):
            mlist.append(d)
    h = len(mlist)
    if h ==3:
        j = i+j
f.close()
f = open(r'3.out.txt','w')
j=str(j)
f.write(j)
f.close()
    