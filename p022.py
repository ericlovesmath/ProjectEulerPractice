from math import isqrt

# a and b are amicable if b = (sum of divisors of a) and vice versa
# Evaluate the sum of all the amicable numbers under 10000

# Get sum of Divisors
div_sum = [1 for i in range(10001)]


for num in range(2, 10001):
    for i in range(2, isqrt(num) + 1):
        if num % i == 0:
            div_sum[num] += i + (num // i)

total = 0
for i in range(1, 10001):
    if div_sum[i] <= 10000 and i == div_sum[div_sum[i]] and i < div_sum[i]:
        print(i, div_sum[i])
        total += i + div_sum[i]

print("Total:", total)
