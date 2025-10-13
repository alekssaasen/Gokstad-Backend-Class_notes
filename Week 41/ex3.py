try:
    print( 2 / 0 )

except ZeroDivisionError:
    print('Caught ZeroDivisionError')
except ArithmeticError:
    print('Caught ArithmeticError')
