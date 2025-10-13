import random
from datetime import datetime

def randomWord(length: int) -> str:
    word = ""
    for i in range(length):
        word += chr(random.randint(65,90))
    return word

for i in range(10):
    try:
        filename = randomWord(10) + ".txt"
        with open(filename,'w') as f:
            f.write(datetime.now().isoformat() + '\n')
    except OSError as e:
        print(f"Faile to create file called {filename}, got error: {e}")