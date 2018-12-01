num=input("Enter the puzzle input ")
prevnum=int(num[len(num)-1])
digitCount=0
totalSum=0
while digitCount<len(num):
    if prevnum == int(num[digitCount]):
        totalSum += prevnum
    prevnum = int(num[digitCount])
    digitCount += 1
print("\nFinal sum was "+str(totalSum))
input("Press Enter to exit")
