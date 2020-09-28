fibb = [1,2]
while (fibb[-1] + fibb[-2]) <= 4000000:
    fibb.append(fibb[-1] + fibb[-2])

even_fibb = [val for val in fibb if val % 2 == 0]
print(sum(even_fibb))