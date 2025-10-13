from fcntl import FASYNC

valid = [42424242, 79927398713]
invalid = [4242424243, 1111111111111]

def convert_to_list(val:int) -> list[int]:
    output_list = []
    string_val = str(val)
    for char in string_val:
        output_list.append(int(char))
    return output_list

def luhn_check(nums:list[int]) -> bool:
    payload = nums
    check_digit = payload.pop()

    payload.reverse()
    sum = 0

    double = True

    for digit in payload:
        if double:
            digit *= 2
            if digit > 9:
                digit -= 9
        double = not double
        sum += digit

    check = (10 - (sum % 10)) % 10
    return check == check_digit


for num in valid:
    print(num, luhn_check(convert_to_list(num)))