# 2520 is the smallest number that can be divided by each of the numbers
#   from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all
#   of the numbers from 1 to 20?

def prime_factors(num, factors=[]):
    complete = False
    for i in range(2,num+1):
        if num % i == 0:
            complete = True
            factors.append(i)
            return prime_factors(num // i, factors)
    if not complete:
        return factors

mass_factor = []
for i in range(1,21):
    for prime in prime_factors(i,[]):
        try:
            mass_factor.remove(prime) 
        except ValueError:
            continue
    for prime in prime_factors(i,[]):
        mass_factor.append(prime)

factor_product = 1
for prime in mass_factor:
    factor_product *= prime
print(factor_product)
