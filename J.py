t = int(input())
def func(a, b):
    while b:
        a, b = b, a % b
    return a
 
for i in range(t):
    n, m = map(int, input().split())
    result = n * m
    for l in range(20, 0, -1):
        M = 10 ** l
        der = M // func(n, M)
        if der <= m:
            result = n * der * int(m // der)
            break
    print(result)