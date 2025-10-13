import turtle

def draw_half(color, x, y, flip=False):
    turtle.penup()
    turtle.goto(x, y)
    turtle.pendown()
    turtle.color(color)
    turtle.begin_fill()

    if not flip:  # Top (blue) half
        turtle.setheading(0)
        turtle.forward(50)
        turtle.circle(25, 90)
        turtle.forward(80)
        turtle.circle(25, 90)
        turtle.forward(50)
        turtle.circle(50, 90)
        turtle.forward(130)
        turtle.circle(50, 90)
    else:  # Bottom (yellow) half, flipped
        turtle.setheading(180)
        turtle.forward(50)
        turtle.circle(-25, 90)
        turtle.forward(80)
        turtle.circle(-25, 90)
        turtle.forward(50)
        turtle.circle(-50, 90)
        turtle.forward(130)
        turtle.circle(-50, 90)

    turtle.end_fill()

    # Eye
    turtle.penup()
    if not flip:
        turtle.goto(x + 30, y + 100)
    else:
        turtle.goto(x - 30, y - 100)
    turtle.dot(30, "white")
    turtle.dot(12, "black")

def main():
    turtle.speed(10)
    turtle.bgcolor("white")

    # Draw top blue half
    draw_half("dodgerblue", -100, 0, flip=False)

    # Draw bottom yellow half
    draw_half("gold", 100, 0, flip=True)

    turtle.hideturtle()
    turtle.done()

main()
