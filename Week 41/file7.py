import os

print(os.path.abspath('.'))
for file in os.listdir('.'):
    if "ex" in file:
        print(file)