def FindIntersection(x1,y1,x2,y2,x3,y3,x4,y4):
	try:
		px= ( (x1*y2-y1*x2)*(x3-x4)-(x1-x2)*(x3*y4-y3*x4) ) // ( (x1-x2)*(y3-y4)-(y1-y2)*(x3-x4) )
		py= ( (x1*y2-y1*x2)*(y3-y4)-(y1-y2)*(x3*y4-y3*x4) ) // ( (x1-x2)*(y3-y4)-(y1-y2)*(x3-x4) )
	except:
		print(x1,y1,x2,y2,x3,y3,x4,y4)
		print("ERROR")
		return [0,0]
	return [px, py]
def Intersection(x1,x2,x3,x4,y1,y2,y3,y4):
	return (max(x1,x2) < min (x3,x4) or min(x1,x2) > max (x3,x4))==False and (max(y1,y2) < min (y3,y4) or min(y1,y2) > max (y3,y4))==False
def Distance(x1,x2,x3,x4,y1,y2,y3,y4):
	if Intersection(x1,x2,x3,x4,y1,y2,y3,y4):
		intersection=FindIntersection(x1,y1,x2,y2,x3,y3,x4,y4)
		#print(intersection)
		return abs(intersection[0])+abs(intersection[1])
	else:
		return -1
#Distance(0+1,1+1,0+1,-1+1,0+1,0+1,0+1,0+1)
"""
Distance(0,2,1,1,0,0,3,1)
Distance(0,2,1,1,0,0,3,1) #NE SIJEKU SE gore
Distance(0,2,1,1,0,0,-1,-3) #NE SIJEKU SE dolje
Distance(0,2,3,3,0,0,1,-1) #NE SIJEKU SE desno
Distance(0,2,-1,-1,0,0,1,-1)  #NE SIJEKU SE lijevo
Distance(0,2,1,1,0,0,0,-2)  #SIJEKU SE dolje,jedan
Distance(0,2,1,1,0,0,2,0)  #SIJEKU SE gore,jedan
Distance(0,2,1,1,0,0,1,-1)  #SIJEKU SE sredina
Distance(0,2,2,2,0,0,1,-1)  #SIJEKU SE -|
Distance(0,2,2,2,0,0,2,0)  #SIJEKU SE _|
Distance(0,2,4,4,0,0,4,2)  #NE SIJEKU SE
Distance(0,2,2,2,0,0,3,1)  #NE SIJEKU SE"""
#y="""R75,D30,R83,U83,L12,D49,R71,U7,L72
#U62,R66,U55,R34,D71,R55,D58,R83"""
#y="""R8,U5,L5,D3
#U7,R6,D4,L4"""
#y="""R75,D30,R83,U83,L12,D49,R71,U7,L72
#U62,R66,U55,R34,D71,R55,D58,R83"""
#y="""R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51
#U98,R91,D20,R16,D67,R40,U7,R15,U6,R7"""
y=open("day3.0.in","r").read()
x=[i.split(",") for i in y.split("\n")]
print(x)
X1,X2,Y1,Y2=[0],[0],[0],[0]
for i in x[0]:
	if i[0]=='U':
		Y1.append(Y1[-1]+int(i[1:]))
		X1.append(X1[-1])
	elif i[0]=='R':
		X1.append(X1[-1]+int(i[1:]))
		Y1.append(Y1[-1])
	elif i[0]=='D':
		Y1.append(Y1[-1]-int(i[1:]))
		X1.append(X1[-1])
	elif i[0]=='L':
		X1.append(X1[-1]-int(i[1:]))
		Y1.append(Y1[-1])
for i in x[1]:
	if i[0]=='U':
		Y2.append(Y2[-1]+int(i[1:]))
		X2.append(X2[-1])
	elif i[0]=='R':
		X2.append(X2[-1]+int(i[1:]))
		Y2.append(Y2[-1])
	elif i[0]=='D':
		Y2.append(Y2[-1]-int(i[1:]))
		X2.append(X2[-1])
	elif i[0]=='L':
		X2.append(X2[-1]-int(i[1:]))
		Y2.append(Y2[-1])
#print(X1,len(X1))
#print(Y1,len(Y1))
#print(X2,len(X2))
#print(Y2,len(Y2))
manh=[]
for i in range(len(X1)-1):
	for j in range(len(X2)-1):
		distance=Distance(X1[i],X1[i+1],X2[j],X2[j+1],Y1[i],Y1[i+1],Y2[j],Y2[j+1],)
		if distance >0:
			print(i,j)
			manh.append(distance)
print(manh)
print(min(manh))






