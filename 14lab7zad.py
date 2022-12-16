with open("14lab7zad.txt", "w+") as fi:
    for i in range(5):
        b=input()
        fi.write(b+'\n')
with open("14lab7zad.txt", "r+") as fi:
    mlist=[]
    for i in fi:
        i=str(i)
    for j in range(len(i)-1):
        if j%2!=0:
            i=i.replace(i[j],'!')
    mlist.append(i)
    fi.truncate(0)
    fi.seek(0)
    for i in range(5):
        b=str(mlist[i])
        fi.writelines(b)

