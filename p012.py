# What is the value of the first triangle number to have over five hundred divisors?

def prime_factors(num, factors=[]):
    complete = False
    for i in range(2,num+1):
        if num % i == 0:
            complete = True
            factors.append(i)
            return prime_factors(num // i, factors)
    if not complete:
        return factors

for i in range(1,100000):
    tri_num = i*(i+1)//2
    count_divisors = {i:prime_factors(tri_num,[]).count(i) for i in prime_factors(tri_num,[])}
    divisor_count = 1
    for value in count_divisors.values():
        divisor_count *= value + 1
    if divisor_count > 500:
        print(tri_num, divisor_count)
        break