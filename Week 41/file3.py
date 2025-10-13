try:
    with open('count.log', 'r+') as f:
        number = 0
        for number in f:
            print(number.strip())
        next_val = int(number) + 1
        f.write(f"{next_val}\n")

except OSError as e:
    print(f"Something went wrong: {e}")
