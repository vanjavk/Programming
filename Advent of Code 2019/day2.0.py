y=open("day2.0.in","r").read().split(",")
x={i:int(y[i]) for i in range(0,len(y))}
x[1]=12
x[2]=2
print(x)
HALT=False
pos=0
while not HALT:
	if x[pos]==1:
		x[x[pos+3]]=x[x[pos+1]]+x[x[pos+2]]
	elif x[pos]==2:
		x[x[pos+3]]=x[x[pos+1]]*x[x[pos+2]]
	elif x[pos]==99:
		HALT=True
	pos+=4
#z=[str(x[i]) for i in range (0,len(x))]
#print(",".join(z))
print(x[0])