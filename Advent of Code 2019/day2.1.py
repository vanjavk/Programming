def computer(noun,verb):
	y=open("day2.0.in","r").read().split(",")
	x={i:int(y[i]) for i in range(0,len(y))}
	x[1]=noun
	x[2]=verb
	#print(x)
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
	return x[0]
for noun in range(0,100):
	for verb in range(0,100):
		if computer(noun,verb)==19690720:
			print(noun*100+verb)
