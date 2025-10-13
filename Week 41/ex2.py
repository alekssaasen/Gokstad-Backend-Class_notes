while True:
    try:
        filename = input("Enter filename to read: ")
        with open(filename, 'r') as f:
            print(f.read())
            break
    except FileNotFoundError:
        print(f"File not found. Please try again.")
    except KeyboardInterrupt:
        break
    except Exception:
        print(f"Something went wrong ...")
print("Bye")
