x="""44444444
44400004
44422204
40023304
41233344
44440044
44444444"""
y=list(map(list,x.split("\n")))
print(y)

print(str(len(y[0]))+","+str(len(y))+":",end="")
for i in y:
    for j in i:
        print(j,end=",")
    
