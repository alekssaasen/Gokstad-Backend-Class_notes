def my_function(word: str):
    print(f"Hello, {word}!")

if __name__ == "__main__":
    # This code only runs if the script is executed directly
    my_function("World")
else:
    # This code only runs if the script is imported
    print("Thank you for using my module!\n <3 Craig")

# This code always runs
print(f"my_module loaded with name: {__name__}")
