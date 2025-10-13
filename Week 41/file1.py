filename = 'meme.webp'

with open(filename, 'rb') as f:
    while True:
        line = f.readline()
        if line == '':
            break
        print(line, end="")


