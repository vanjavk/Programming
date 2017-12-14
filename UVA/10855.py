vm=list(map(int,input().split()))
v,m=vm[0],vm[1]
def check(V,M,v,m):
    suma=0
    for i in range(v-m+1):
        for j in range(v-m+1):
            isto=True
            for i1 in range(m):
                for j1 in range(m):
                    if V[i+i1][j+j1]!=M[i1][j1]:
                        isto=False
                        break
                if isto==False:
                    break
                    #print(V[i+i1][j+j1],M[i1][j1])
            #print(isto)
            if isto==True:
                suma+=1
    return suma
 
   
 
while (v>0):
    V,M=list(),list()
    for i in range(v):
        V.append(list(input()))
    for i in range(m):
        M.append(list(input()))
    #print(V,M)
   
    suma=list()
    for i in range(4):
        #print(M)
        suma.append(check(V,M,v,m))
        M=list(reversed(list(zip(*M))))
       
    print("{} {} {} {}".format(suma[0],suma[3],suma[2],suma[1]))
   
    vm=list(map(int,input().split()))
    v,m=vm[0],vm[1]
print()
