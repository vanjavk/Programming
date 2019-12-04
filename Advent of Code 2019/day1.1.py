x=open("day1.0.in","r").read().split("\n")
def calcfuel(x,sumica):
	newfuel=x//3-2
	if newfuel<=0:
		return sumica
	else:
		return calcfuel(newfuel,sumica+newfuel)
suma=0
for i in x:
	suma+=calcfuel(int(i),0)
print(suma)