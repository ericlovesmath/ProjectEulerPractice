# Identify Size of Cycle

i = 1
while True:
    ans = pow(1777, i, 10**8)
    if ans == 1:
        print("Size of Cycle:", i)
        break
    i += 1

# Recursively solve with smaller cycle

curr = 1777
for i in range(1854):
    curr = pow(1777, curr % 1250000, 10**8)

print("Answer:", curr)
