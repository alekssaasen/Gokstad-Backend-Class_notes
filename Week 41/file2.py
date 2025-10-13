from datetime import datetime

try:
    with open('example.log', 'a') as f:
        f.write(datetime.now().isoformat() + '\n')

except OSError as e:
    print(f"Something went wrong: {e}")
