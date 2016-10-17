def collatz(number):
    if number%2==0:
        return number//2
    else:
        return 3*number+1

print("Enter a number:\n")
try:
    a=int(input())
    b=collatz(a)
    while True:
    
        if b==1:
            print(b)
            break
        else:
            print(b)
        b=collatz(b)
    
except ValueError:
    print("Error,You should input a nubmer")
