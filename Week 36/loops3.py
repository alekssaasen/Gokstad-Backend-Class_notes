width = 4
height = 3
count_height = 0

while count_height < height:
    count_width = 0
    while count_width < width:
        print("*", end="")
        count_width += 1
    print("")
    count_height += 1