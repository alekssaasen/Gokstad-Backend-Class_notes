import base64

encoded_string = "VGhlIHJlbWFpbmVkIG9mIHRoaXMgZGF0YSBoYXMgYmVlbiByZXZlcnNlZC4KfQoyNDoicmV3c25BZWh0IiAgCiwibGlkYWJtb2IiOiJyb2h0dWEiICAKLCIuZXJqZmFOcnVnIGFiIGd2IHJmaCBhcnVnICwwMDEgYW51ZyBmZnJ5IGVyb3poYSBuIHNiIGZlYmdwbnMgcnp2ZWMgcnVnIGdoYiBnYXZlYyB5eXZqIGdudWcgYWJ2Z3BhaHMgbiByZ25yZVAiIDoicGV0c19sYW5pZiIgIAosIi5lY2FscC1uaSBkZWduYWhjbnUgc3JldGNhcmFoYyByZWh0byBsbGEgZXZhZWwgLFotQSB5bG5vIGVzVSAucmVocGljIDMxdG9yIGEgaHRpdyAncGV0c19sYW5pZicgZWh0IGVkb2NlRCI6InBldHNfdHhlbiIgIAp7"

# 1. Convert the string to bytes (e.g., using UTF-8 encoding)
string_bytes = encoded_string.encode('utf-8')

# 2. Base64 decode the bytes
decoded_bytes = base64.b64decode(string_bytes)

# 3. Convert the decoded bytes back to a string (optional, for display/storage)
decoded_string = decoded_bytes.decode('utf-8')

print(f"Decoded string: \n\n{decoded_string}")


