# What is the 10001st prime number?

primes = []
num = 1
while len(primes) < 10001:
    num += 1
    is_prime = True
    for prime in primes:
        if num % prime == 0:
            is_prime = False
    if is_prime:
        primes.append(num)
print(primes[-1])