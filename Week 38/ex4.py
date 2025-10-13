def isMultipleOfThree(num: int) -> bool:
    '''
    :param num: The number to test
    :return: True if the number is a multiple of three, False otherwise
    Determines if a provided integer is a multiple of three
    '''
    result = ((num % 3) == 0)
    return result

num = int(input("Enter a number: "))

if isMultipleOfThree(num):
    print("Yes, it is a multiple of three")
else:
    print("Not a multiple of three")