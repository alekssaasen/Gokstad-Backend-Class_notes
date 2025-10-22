import random
import math

starts = ["Fro", "Sam", "Gan", "Gol", "Bil", "Ara", "Sau", "Lego", "Ar", "Pip", "Boro", "Gim"]
ends = ["do", "wise", "dalf", "lum", "bo", "gorn", "ron", "las", "win", "pin", "mir", "li"]

random.seed(42)

num = int(input("Please enter number of desired names: "))

for i in range (num):
    name = starts[random.randint(0, len(starts)-1)]
    #print(math.ceil(random.random() * 6))
    name += ends[random.randint(0, len(starts)-1)]

    print(name)
