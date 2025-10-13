import glob

for file in glob.glob('../**/*', recursive=True, include_hidden=False):
    print(file)
    # if "ex" in file:
    #     f = open(file)
    #     print(f.read())