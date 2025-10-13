import turtle

my_turtle = turtle.Turtle()  # This creates the object (my_turtle)
my_turtle.color('green')  # This make is blue, default is black
# my_turtle.shape('turtle')  # This makes it turtle shaped, default is an arrowhead
my_turtle.speed(1)  # This makes it fast or slow

# do stuff here

# draw a green triangle
my_turtle.color('green')
my_turtle.forward(100)
my_turtle.left(120)
my_turtle.forward(100)
my_turtle.left(120)
my_turtle.forward(100)
my_turtle.left(120)

# reposition
my_turtle.penup()
my_turtle.left(180)
my_turtle.forward(100)
my_turtle.left(90)
my_turtle.forward(100)
my_turtle.left(90)
my_turtle.pendown()

# draw a red square
my_turtle.color('red')
my_turtle.forward(300)
my_turtle.left(90)
my_turtle.forward(300)
my_turtle.left(90)
my_turtle.forward(300)
my_turtle.left(90)
my_turtle.forward(300)

# this is so the window stays open until we click
turtle.exitonclick()