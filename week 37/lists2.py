characters = [
    "Frodo",
    "Samwise",
    "Pippin",
    "Merry"
]

i = 0

characters.append("Aragorn")
#characters.insert(0, "Aragorn")
removed = characters.pop()
for char in characters:
    print(i, end=" ")
    print(char)
    i += 1
print(removed, "was removed from the list")