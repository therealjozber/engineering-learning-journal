##python functions
#
##syntax of function
#def function_name(parameters):
#    #function body
#    return value
#def function_name():

def add_numbers(a,d, b=89):
    """
    Docstring for add_numbers
    
    :param a: Description
    :param b: Description
    :param d: Description
    """
    c = d + a - b
    return c
    #return a + b

#output = add_numbers(45,23)
output2 = add_numbers(200, d=230)
#keyword raguments
#key=value
#print(output2)

#variable leght args
#*args, **kwargs
def total_fruits(**kwargs):

    total = sum(kwargs.values())

    return total

