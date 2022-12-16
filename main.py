from tkinter import *
import sys
from tqdm import tqdm
import time
def selection_sort():
    with open(r'dkr2.txt','r+') as fi:
        g = []
        mlist = []
        for i in range(3):
            q = fi.readline()
            q = q.replace('\n','')
            q = q.replace('', '')
            g.append(q)
        for p in g:
            p = p.split(' ')
            p=list(map(int, p))
            for i in range(0, len(p) - 1):
                smallest = i
                for j in range(i + 1, len(p)):
                    if p[j] < p[smallest]:
                        smallest = j
                p[i], p[smallest] = p[smallest], p[i]
            print(p)
            mlist.append(p)
        print(mlist)
        fi.seek(0)
        fi.truncate()
        for i in range(3):
            t = (" ".join(map(str, mlist[i])))
            t.replace('[','')
            t.replace(']', '')
            t.replace(',', '')
            fi.write(t+'\n')
def suk():
        def merge_sort(nums):
            if len(nums) > 1:
                mid = len(nums)//2
                left = nums[:mid]
                right = nums[mid:]
                merge_sort(left)
                merge_sort(right)

                i = j = k = 0

                while i < len(left) and j < len(right):
                    if left[i] < right[j]:
                        nums[k] = left[i]
                        i+=1
                    else:
                        nums[k] = right[j]
                        j+=1
                    k+=1

                while i < len(left):
                    nums[k] = left[i]
                    i+=1
                    k+=1

                while j < len(right):
                    nums[k] = right[j]
                    j+=1
                    k+=1
            mlist.append(nums)
            print(mlist)

        with open(r'dkr.txt', 'r+') as dk:
            g = []
            mlist = []
            for i in range(1):
                q = dk.readline()
                q = q.replace('\n', '')
                q = q.replace('', '')
                g.append(q)
            for p in g:
                p = p.split(' ')
                p = list(map(int, p))
            nums = p
            merge_sort(nums)
            dk.seek(0)
            dk.truncate()
            t = (" ".join(map(str, mlist[-1])))
            t.replace('[','')
            t.replace(']', '')
            t.replace(',', '')
            dk.write(t+'\n')
def ex():
    sys.exit()

window = Tk()
window.title("JOJO самое лучшее аниме")
lbl = Label(window, text="JOJO",font=('cursive',50))
lbl.grid(column=0, row=0)
window.geometry('900x700')
vib = Button(window, text="Сортировка с выбором",command=selection_sort,font=('cursive',20))
vib.grid(column=1, row=0)
sli = Button(window, text="Сортировка слиянием",command=suk,font=('cursive',20))
sli.grid(column=2, row=0)
exi = Button(window, text="Выход",command=ex,font=('cursive',20))
exi.grid(column=4, row=0)
for i in tqdm(range(101),
              desc="Loading…",
              ascii=False, ncols=75):
    time.sleep(0.01)
print("Complete.")

window.mainloop()

