common = set()

for letter in set("telephone"):
    if letter in set("elephant"):
        print("Charset contains", letter)
        common.add(letter)

common = set(common)
print(common)