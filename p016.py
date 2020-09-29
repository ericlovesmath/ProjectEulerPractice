# What is the sum of the digits of the number 2^1000?

total_sum = sum(int(digit) for digit in str(2**1000))
print(total_sum)