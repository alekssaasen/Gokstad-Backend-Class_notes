word = "Hello, this is a for loop"

flip = True

for i in range(len(word)):
    char = word[i]
    if flip:
        char = char.lower()
    else:
        char = char.upper()
    print(char, end = "")
    flip = not flip