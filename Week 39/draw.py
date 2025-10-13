import turtle

print("1: Apple")
print("2: Snake")
print("3: Triangle")

item = input("Please select an item to draw: ")
valid = {"1","2","3"}

if item in valid:
    print(f"You selected {item}")

    if item == "1":
        turtle.bgcolor("white")
        # Draw apple body
        turtle.color("red")
        turtle.begin_fill()
        turtle.circle(100, 180)  # left curve
        turtle.circle(200, 180)  # bottom curve
        turtle.left(180)
        turtle.circle(-100, 180)  # right curve
        turtle.end_fill()
        # Draw stem
        turtle.penup()
        turtle.goto(0, 100)
        turtle.pendown()
        turtle.color("saddlebrown")
        turtle.pensize(15)
        turtle.left(90)
        turtle.forward(40)
        # Draw leaf
        turtle.color("green")
        turtle.pensize(3)
        turtle.begin_fill()
        turtle.right(45)
        turtle.forward(40)
        turtle.circle(20, 90)
        turtle.forward(40)
        turtle.end_fill()

        turtle.hideturtle()
        turtle.done()
    elif item == "2":
        turtle.setup(800, 600)  # make window bigger
        turtle.speed(8)
        turtle.bgcolor("white")

        # Snake body
        turtle.color("green")
        turtle.pensize(15)
        turtle.penup()
        turtle.goto(0, -300)
        turtle.pendown()

        for i in range(3):  # smaller wiggles
            turtle.circle(40, 180)  # curve right
            turtle.circle(-40, 180)  # curve left

        # Snake head
        turtle.begin_fill()
        turtle.circle(30)  # round head
        turtle.end_fill()

        # Eyes
        turtle.penup()
        turtle.goto(turtle.xcor() - 10, turtle.ycor() + 40)
        turtle.pendown()
        turtle.dot(15, "white")
        turtle.dot(6, "black")

        turtle.penup()
        turtle.goto(turtle.xcor() + 20, turtle.ycor())
        turtle.pendown()
        turtle.dot(15, "white")
        turtle.dot(6, "black")

        # Tongue
        turtle.color("red")
        turtle.pensize(2)
        turtle.penup()
        turtle.goto(turtle.xcor() - 10, turtle.ycor() - 40)
        turtle.setheading(-60)
        turtle.pendown()
        turtle.forward(20)
        turtle.back(20)
        turtle.setheading(-120)
        turtle.forward(20)
        turtle.back(20)

        turtle.hideturtle()
        turtle.done()
    elif item == "3":

        turtle.color("green")
        turtle.begin_fill()
        for i in range (3):
            turtle.forward(100)
            turtle.left(120)
        turtle.end_fill()
        turtle.hideturtle()
        turtle.done()

    else:
        print("Unknown ...")




