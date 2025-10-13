def double(num:int) -> int:
    result_value = num * 2
    return result_value

def quadruple(input_value:int) -> int:
    result_value = input_value * 4
    return result_value

number = 4
d_number = double(number)
q_number = quadruple(number)

print("Double", d_number)
print("Quadruple", q_number)