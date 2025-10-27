import tkinter


def do_work():
    num = int(text.get())
    if num >= 65535:
        num = 65535
        text.delete(0, 40)
        text.insert(0, "65535")
    bnum = bin(num)[2:].rjust(16, "0")
    lbl = "\t"
    for b in bnum:
        lbl += b + "\t"
    labelText.set(lbl)


root = tkinter.Tk()

labelText = tkinter.StringVar()
labelText.set("\t0\t0\t0\t0\t0\t0\t0\t0\t0\t0\t0\t0\t0\t0\t0\t0\t")

text = tkinter.Entry(root)
text.pack()

label1 = tkinter.Label(root, text="\t32768\t16384\t8192\t4096\t2048\t1024\t512\t256\t128\t64\t32\t16\t8\t4\t2\t1\t")
label1.pack()

label2 = tkinter.Label(root, textvariable=labelText)
label2.pack()

button = tkinter.Button(root, text="Do work", command=do_work)
button.pack(padx=20, pady=20)

root.mainloop()