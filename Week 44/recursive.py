def hello(num:int):
    print(num)
    hello(num + 1)

def other():
    print(":D")

other()
hello(1)

