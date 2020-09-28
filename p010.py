# Find the sum of all the primes below two million

primes = [2]
for num in range(2,2000000):
    is_prime = True
    for prime in primes:
        if num % prime == 0:
            is_prime = False
    if is_prime:
        primes.append(num)
print(sum(primes))