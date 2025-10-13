characters = [
    "Frodo",
    "Samwise",
    "Samwise",
    "Samwise",
    "Pippin",
    "Merry"
]


i = 0
for char in characters:
    print(i, end=" ")
    print(char)
    i += 1

while "Samwise" in characters:
    characters.remove("Samwise")

print("------------")
i = 0
for char in characters:
    print(i, end=" ")
    print(char)
    i += 1
