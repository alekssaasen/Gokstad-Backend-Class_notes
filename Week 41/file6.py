import os

temp_dir = 'tmp'
temp_file = 'temp.txt'
file_path = os.path.join(temp_dir, temp_file)
print(file_path)

if not os.path.exists(temp_dir):
    os.mkdir(temp_dir)
dstats = os.stat(temp_dir)
print('DIR', dstats)

with open(file_path, 'w') as f:
    f.write('Hello, world!')

print('FILE', os.stat(file_path))

with open(file_path, 'r') as f:
    print(f.read())

os.remove(file_path)
os.rmdir(temp_dir)
