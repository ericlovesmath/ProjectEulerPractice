# Find the sum of the digits in the number 100!

def factorial(num, prod=1):
    if num == 1:
        return prod
    else:
        return factorial(num-1, prod*num)

print(sum(int(digit) for digit in str(factorial(100))))
