data = {
    "employees":[
        {"firstName": "John", "lastName": "Doe", "age": 42},
        {"firstName": "Anna", "lastName": "Smith"},
        {"firstName": "Peter", "lastName": "Jones"},
    ]
}

emp1 = {"firstName": "John", "lastName": "Doe"}
emp2 = {"firstName": "Anna", "lastName": "Smith"}
emp3 = {"firstName": "Peter", "lastName": "Jones"}

employees_list = [emp1, emp2, emp3]
emp_dict = {"employees": employees_list}

for line in data["employees"]:
    print(line["firstName"], line["lastName"])
    if "age" in line.keys():
        print(line["age"])