import turtle


def draw_snake(color, x, y, flip=False):
    turtle.penup()
    turtle.goto(x, y)
    turtle.pendown()
    turtle.color(color)
    turtle.begin_fill()
    turtle.setheading(90 if not flip else -90)

    # Rounded rectangle snake body
    for _ in range(2):
        turtle.forward(100)
        turtle.circle(40, 90)
        turtle.forward(100)
        turtle.circle(40, 90)

    turtle.end_fill()

    # Eye
    turtle.penup()
    turtle.forward(60 if not flip else -60)
    turtle.right(90)
    turtle.forward(30)
    turtle.dot(20, "white")
    turtle.dot(8, "black")
    turtle.home()


# Setup
turtle.speed(8)
turtle.bgcolor("white")

# Draw top (blue) snake
draw_snake("dodgerblue", -60, 0, flip=False)

# Draw bottom (yellow) snake
draw_snake("gold", 60, -40, flip=True)

turtle.hideturtle()
turtle.done()
