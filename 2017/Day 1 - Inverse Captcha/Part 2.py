num=input("Enter the puzzle input ")
curnum=int(num[0])
curIndex=0
totalSum=0
circIndex=0
while curIndex<len(num):
    if len(num)//2 > curIndex:
        circIndex=curIndex+len(num)//2
    else:
        circIndex=curIndex+len(num)//2-len(num)
    if curnum == int(num[circIndex]):
        totalSum += curnum
    curIndex += 1
    if curIndex != len(num):
        curnum = int(num[curIndex])
print("\nFinal sum was "+str(totalSum))
input("Press Enter to exit")
