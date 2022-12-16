with open(r'C:\Users\yarov\OneDrive\Рабочий стол\13-14 Python\textsix.txt','r') as filed:
    for line in filed:
        if not line.isspace():
            print(line.replace('\n', ''))

    