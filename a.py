for k in range(int(input())):
    n = int(input())
    bar = list(map(int, input().split()))
    bar.sort()
    if bar[0] != 1:
        print(0)
    elif n == 1:
        print(1)
    else:
        t = bar.count(1)
        for i in range(t,-1,-1):
            if i + i - 1>n:
                continue
            tag = 0
            for j in range(i-1,2*i-1):
                if bar[j] > j-i+2:
                    tag = 1
                    break
            if tag == 0:
                print(i)
            break