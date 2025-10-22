import base64
import json

filename = "data2"

with open(filename, 'r') as f:
    data = f.read()
    print(data)

string_bytes = data.encode('utf-8')
decoded_bytes = base64.b64decode(string_bytes)
decoded_string = decoded_bytes.decode('utf-8')

json_block = ""

for line in decoded_string.splitlines()[1:]:
    json_block += line

json_data = json.loads(json_block)

for item in json_data:
    if "username" in item:
        print(item["username"] + " - " + item["firstname"])
    elif "number" in item:
        print(item["number"])

