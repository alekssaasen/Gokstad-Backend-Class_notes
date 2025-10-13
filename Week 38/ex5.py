def process_data(**data):
    if 'username' in data.keys():
        print(f"Data contains username: {data['username']}")
    else:
        print("No username found in data")


process_data(firstname="Craig", lastname="Marais", username="Craigsworth")