
S=input("what is your faviourite starter?")
M=input("what is your faviorite meal?")
D=input("what is your faviourite dessert?")
Drink=input("what is your faviourite drink")

output = "Your faviourite meal is " + S +" and " + M + " and "  + S +" with a glass of "+ Drink
print(output)
-----------------------------------------------------------------------

a=float(input("Type a number..."))
b=float(input("Type another number..."))
output_1=a-b
output_2=a*b
output_3=a/b
putput_4=a//b
print(output_1)
print(output_2)
print(output_3)
print(output_4)

------------------------------------------------------------
joke= "What do you call a bear with no teeth?, \n the answer is a gummy bear"
print(joke)

---------------------------------------------------------------
a=float(input("Type a number..."))
b=float(input("Type another number..."))
output_1=a*b
print(int(output_1))
print(float(output_1))
------------------------------------------------------
a="data science is fun"   #Replace Uppercase Split
print(a.replace("a","e"))
print(a.upper())
print(a.split(" "))
print(a.lower())
print(a.capitalize())
----------------------------------------------
#Ask for the radius and the depth of a cylinder and work out the total volume (circle 
#area*depth) rounded to three decimal places. (You will need to import the math library 
#and look up the function for rounding decimals)

import math 
radious=float(input("type the radious.."))
depth_cylinder=float(input("type the depth of cylinder"))
volume=radious**2*math.pi*depth_cylinder
print(round(volume,3))
--------------------------------------
bill=float(input("total price of a bill"))
dinner=int(input("how many dinners are there"))
mean=bill/dinner
print(mean)


