### 6. Write a function
def is_leap(year):
    leap = False

    if year % 4 == 0 and (year % 100 != 0 or year % 400 == 0):
        leap = True

    return leap

year = int(input())
print(is_leap(year))

## 7. Print fucntion
if __name__ == '__main__':
    n = int(input())
    for i in range(1, n+1):
        print(i, end='')

## Other Solution
## print(*range(1, int(input())+1), sep='')
## * takes it to array and sep='' makes iteration

## 8. List Comprehensions
if __name__ == '__main__':
    x = int(input())
    y = int(input())
    z = int(input())
    n = int(input())

    l = list()

    for a in range(x + 1):
        for b in range(y + 1):
            for c in range(z + 1):
                if a + b + c != n:
                    l += [[a, b, c]]

    print(l)

##Other Solution
##print([[a, b, c] for a in range(x + 1) for b in range(y + 1) for c in range(z + 1) if a + b + c != n])

## 9. Find the Runner-up Score!
if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    print(sorted(set(arr))[-2])

## Other Solution without using sort or set
##  n = int(input())
##  l = list(map(int, input().strip().split()))[:n]
##  z = max(l)
##  while max(l) == z:
##      l.remove(max(l))
##  print(max(l))


## 10. Nested Lists
if __name__ == '__main__':
    students = list()
    for _ in range(int(input())):
        name = input()
        score = float(input())
        students += [[name, score]]

    ru = sorted(set([score for name, score in students]))[1]
    print('\n'.join([name for name, score in sorted(students) if score == ru]))