def prime_factors(num, factors=[]):
    complete = False
    for i in range(2,num+1):
        if num % i == 0:
            complete = True
            factors.append(i)
            return prime_factors(num // i, factors)
    if not complete:
        return factors

primes = prime_factors(600851475143)
print(max(primes))