filename = "alice.txt"

def checkifitallic(word: str) -> bool:
    chars = list(word)
    return chars[0] == '_' and chars[-1] == '_'

with open(filename, 'r', encoding="utf8") as f:
    while True:
        line = f.readline()
        if line == '':
            break
        for word in line.split(' '):
            if len(word) > 0 and checkifitallic(word):
                print(word)

        # print(line,end="")