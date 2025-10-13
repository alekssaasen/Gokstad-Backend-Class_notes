def printHello(name:str):
    print(f"Hello, {name}!")

print("name_tool name is", __name__)

if __name__=="__main__":
    name = input("Please enter a name:")
    printHello(name)