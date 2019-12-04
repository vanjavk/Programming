x=open("day1.0.in","r").read().split("\n")
suma=0
for i in x:
	suma+=int(i)//3-2
print(suma)