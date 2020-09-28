# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

for a in range(1,1001):
    for b in range(1,a):
        if (a**2 + b**2) == (1000-a-b)**2:
            print(a, b, 1000-a-b)
            print(a * b * (1000-a-b))