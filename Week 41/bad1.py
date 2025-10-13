try:
    print( 2 / 0 )

except ValueError: 
    print('Caught ValueError')
except ZeroDivisionError: 
    print('Caught ZeroDivisionError')