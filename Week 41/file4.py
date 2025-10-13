from IPython.display import display, Image

try:
    with open('meme.webp', 'rb') as f:
        data = f.read()
    print(f"Read {len(data)} {type(data)}")
    display(Image(data))
except FileNotFoundError:
    print("File not found")
