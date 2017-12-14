from sys import stdin
s=list(map(lambda x: x.replace("\n",""),list(stdin)))
r=0
while(r<=len(s)-1):
    NBHW=list(map(int,s[r].split()))
    r+=1
    possible=list()
    for i in range(NBHW[2]):
        p=int(s[r])
        r+=1
        if NBHW[1]>=p*int(NBHW[0]):
            price=True
        else:
            price=False
        availability = False
        avail=list(map(int,s[r].split()))
        r+=1
        for w in avail:
            if w>=NBHW[0]:
                availability=True      
        if(price and availability):
            possible.append(p*int(NBHW[0]))
    if(len(possible)>0):
        print(sorted(possible)[0])
    else:
        print("stay home")