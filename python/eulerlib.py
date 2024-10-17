import array, math

def is_square(x):
	if x < 0:
		return False
	return sqrt(x)**2 == x

def prime_factors(num, factors=[]):
    complete = False
    for i in range(2,num+1):
        if num % i == 0:
            complete = True
            factors.append(i)
            return prime_factors(num // i, factors)
    if not complete:
        return factors

def prime_sieve(n):
    r = [False, True] * (n // 2)
    if n%2:
        r.append(False)
    r[0] = r[1] = False
    r[2] = True
    for i in range(3, int(n**0.5+1), 2):
        if r[i]:
            r[i*i::2*i] = [False] * len(range(i*i,n,2*i))
    return r

def is_palindrome(num):
    return str(num)[::-1] == str(num)

def factorial(num, prod=1):
    if num == 1:
        return prod
    else:
        return factorial(num-1, prod*num)

def inverse_mod(x, m):
	assert 0 <= x < m
	
	# Based on a simplification of the extended Euclidean algorithm
	y = x
	x = m
	a = 0
	b = 1
	while y != 0:
		a, b = b, a - x // y * b
		x, y = y, x % y
	if x == 1:
		return a % m
	else:
		raise ValueError("Reciprocal does not exist")

def choose(n, k):
	assert 0 <= k <= n
	return math.factorial(n) // (math.factorial(k) * math.factorial(n - k))

def sqrt(x):
	assert x >= 0
	i = 1
	while i * i <= x:
		i *= 2
	y = 0
	while i > 0:
		if (y + i)**2 <= x:
			y += i
		i //= 2
	return y

def prime_list(n):
	return [i for (i, isprime) in enumerate(prime_sieve(n)) if isprime]
