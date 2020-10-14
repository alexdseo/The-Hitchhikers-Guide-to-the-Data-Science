### 1. Hello World
my_string = "Hello, World!"
print(my_string)

### 2. If-Else
if __name__ == '__main__':
    n = int(input().strip())
    if n % 2 == 1 :
        print("Weird")
    else:
        if (2 <= n <= 5) :
            print("Not Weird")
        elif (6 <= n <=20) :
            print("Weird")
        else:
            print("Not Weird")

##  Other Solution
##  n = int(input().strip())
##  check = {True: "Not Weird", False: "Weird"}
##  print(check[
##    n%2==0 and (
##          n in range(2,6) or
##          n > 20)])

### 3. Arithmetic Operations

if __name__ == '__main__':
    a, b = int(input()), int(input())
    print((a + b), (a - b), (a * b), sep='\n')

## Other Solution
## print('{0} \n{1} \n{2}'.format((a + b), (a - b), (a * b)))
## print('{:d}\n{:d}\n{:d}'.format(a+b,a-b,a*b))

### 4. Division

if __name__ == '__main__':
    a, b = int(input()), int(input())
    print('{:f}\n{:f}'.format(a // b, a / b))
    ##print((a // b), (a / b), sep='\n')

### 5. Loops

if __name__ == '__main__':
    n = int(input())
    for i in range(0, n):
        print(i ** 2)

## Other Solution
## print(*[num**2 for num in range(n)], sep='\n')