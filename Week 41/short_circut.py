def func1() -> bool:
    print("Test 1")
    return True

def func2() -> bool:
    print("Test 2")
    return False

def func3() -> bool:
    print("Test 3")
    return True

if func1() and func2() and func3():
    print("Done")

# if func1() or func2():
#     print("Or done")