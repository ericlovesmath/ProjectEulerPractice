# Find the sum of all the primes below two million

# https://stackoverflow.com/questions/34540574/how-to-speed-up-sieve-of-eratosthenes-python-list-generator

import time
start = time.time()


def prime_sieve(n):
    r = [False, True] * (n // 2)
    if n % 2:
        r.append(False)
    r[0] = r[1] = False
    r[2] = True
    for i in range(3, int(n**0.5+1), 2):
        if r[i]:
            r[i*i::2*i] = [False] * len(range(i*i, n, 2*i))
    return r


primes_under_twomil = prime_sieve(2000001)
print(sum(i for i in range(1, 2000001) if primes_under_twomil[i]))

end = time.time()
print("Runtime {:.3f}s".format(end-start))
