n = int(input())
k = int(input())
with open(r'C:\Users\yarov\OneDrive\Рабочий стол\Python\zad2.txt','w') as f:
    for i in range(n):
        f.writelines(k*'*'+'\n')
