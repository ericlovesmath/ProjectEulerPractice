# Find the difference between the sum of the squares of the first one hundred natural numbers
#   and the square of the sum
#
# (1 + 2 + 3 + ... + 100)^2 - (1^2 + 2^2 + 3^3 + ... + 100^2) = ?

# [(n)(n+1)/2]^2 - [n(n + 1)(2n + 1)] / 6

def sum_square_diff(num):
    return ((num)*(num+1)//2)**2 - num*(num + 1)*(2*num + 1)//6

print(sum_square_diff(100))