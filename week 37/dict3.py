groceries = {
    "eggs":
        {
            "quantity": 12,
            "note": "free range"
        },
    "bread": {
        "quantity": "1 loaf",
        "note": "seed or whole grain"
    },
    "milk": {
        "quantity": "1 litre",
        "note": "whole milk"
    }
}

groceries["butter"] = {'quantity': "One blcok", "note": "Salted"}

for item in groceries:
    print(f" - {item} - ")
    print(f"\tQuantity: {groceries[item]["quantity"]}")
    print(f"\t{groceries[item]["note"]}\n")

dictionary = {
    "hello": "world",
    "answer": 42,
    "number": [4, 8, 15, 16, 23, 42],
    7: 11,
    42: ["Please restate the question", "This is a number"]
}

for key in dictionary:
    print(f"{key} : {dictionary[key]}")
