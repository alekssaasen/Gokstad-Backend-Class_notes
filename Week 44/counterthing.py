import tkinter

# global variables
num = 0

# functions

def display_and_count():
    '''  
    Sets the text of the textbox to the counter value, then queues and update to occur in 1000ms    :return:  
    '''
    global num
    text.replace("1.0", "1.5", str(num).rjust(5, "0"))
    num += 1

    # call this function again in 1 second
    root.after(10, display_and_count)


def reset():
    '''  
    Resets num back to zero    :return:  
    '''
    global num
    num = 0
    text.replace("1.0", "1.5", str(num).rjust(5, "0"))


# Create root element
root = tkinter.Tk()

# set min and max size for window
root.minsize(200, 100)
root.maxsize(400, 400)

# create a label
message = tkinter.Label(root, text="Craig's Amazing Counter", background="#34A2FE")
message.pack()

# create a textbox, 1 char high and 5 wide
# it has a default value of "Hello" which should never be seen
text = tkinter.Text(root, height=1, width=5)
text.insert(tkinter.END, "Hello")
text.pack()

# a button to call the Reset function
button = tkinter.Button(root, text="Reset", command=reset)
button.pack(padx=20, pady=20, side=tkinter.LEFT)

# an extra button to exit
button = tkinter.Button(root, text="Exit", command=root.destroy)
button.pack(padx=20, pady=20, side=tkinter.RIGHT)

# setup the first counter display (which queues the next)
display_and_count()

# show the window
root.mainloop()