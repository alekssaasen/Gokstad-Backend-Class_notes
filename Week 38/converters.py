# ord char -> int
#int() int -> char


def convert_to_int(word:str):
    letters = []
    for letter in word:
        letters.append(ord(letter))
    return letters

def convert_to_word(numbers:list[int]):
    word = ""
    for num in numbers:
        word += chr(num)
    return word

word = input("Enter a word: ")
nums = convert_to_int(word)
print(nums)

re_word = convert_to_word(nums)
print(re_word)