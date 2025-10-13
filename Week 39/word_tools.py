def other():
    print("other")

def vowel_count(word: str) -> int:
    word = word.lower()
    vowels = {'a', 'e', 'i', 'o', 'u'}
    count = 0
    for c in word:
        if c in vowels:
            count += 1
    return count

if __name__ == "__main__":
    print("--- TESTS ---")
    print(("craig (2): ".ljust(15," ")),vowel_count("craig"))
    print("crig (1): ".ljust(15," "),vowel_count("crig"))
    print("apple (2): ".ljust(15," "),vowel_count("apple"))
    print("stevee (3): ".ljust(15," "),vowel_count("stevee"))
    print("pig (1): ".ljust(15," "),vowel_count("pig"))
    print("djsfhksd (0): ".ljust(15," "),vowel_count("djsfhksd"))