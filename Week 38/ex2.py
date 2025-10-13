def printInfo(firstName:str, age:int, lastName:str):
	print(f"Your first name is {firstName}, and your surname is {lastName}.")
	print(f"Your provided age is {age}.")

printInfo("Aleksander", 24, "Aasen")
printInfo(lastName="Aasen", age=24, firstName="Aleks")