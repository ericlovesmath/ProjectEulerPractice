fibb = [1,2]
while (fibb[-1] + fibb[-2]) <= 4000000:
    fibb.append(fibb[-1] + fibb[-2])

even_fibb = sum(val for val in fibb if val % 2 == 0)
print(even_fibb)

even_fibb = 0
x, y = 1, 2
while x <= 4000000:
    if x % 2 == 0:
        even_fibb += x
    x, y = y, x + y
print(even_fibb)