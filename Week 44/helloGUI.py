import tkinter
import uuid
# Create root element and window title
myapp = tkinter.Tk()

myapp.title("Monday")

def createAlabal ():
    label = tkinter.Label(myapp, text=str(uuid.uuid4()))
    label.pack()

message = "Hello, World"

label1 = tkinter.Label(myapp, text=message, background="black", foreground="orange")
label1.pack(padx=20, pady=20)

button1 = tkinter.Button(myapp, text="Kill all humans!", padx=21, pady=11, command=label1.destroy)
button1.pack(padx=40, pady=40)

button2 = tkinter.Button(myapp, text="I need UUID's", padx=21, pady=11, command=createAlabal)
button2.pack(padx=40, pady=40)


myapp.mainloop()