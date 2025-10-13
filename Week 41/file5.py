from PIL import Image
with Image.open("meme.webp") as im:
    im.rotate(45).show()