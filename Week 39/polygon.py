import turtle

num = int(input("please enter a number greater than 2: "))

turtle.color("black")
#turtle.begin_fill()
for i in range (num):
    turtle.forward(50)
    turtle.left(360/num)
#turtle.end_fill()
turtle.hideturtle()
turtle.done()