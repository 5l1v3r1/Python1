import sys
name=sys.argv[1]
with open('.%s.dat' %name, 'r') as datafile:
	data=datafile.read()
if "Favorite Color:" in data:
  for line in data.splitlines():
    if "Favorite Color:" in line:
    	line1=line
    	break
  print(line1)
  color=line1.split("Color: ", 1)[1]
  print("Hello, %s, your favorite color is %s" %(name, color))
elif "Favorite Color:" not in data:
  print("Hello, %s." %name)
  color=raw_input("What is your favorite color?: ")
  with open('.%s.dat' %name, 'w') as datafile:
    datafile.write("Favorite Color: %s" %color)
    datafile.write("\n")
