# The following iterative sequence is defined for the set of positive integers:
#   n -> n/2 (n is even)
#   n -> 3n + 1 (n is odd)
#
# Although it has not been proved yet (Collatz Problem),
#   it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?

def collatz_seq(num, len=1):
    if num != 1:
        if num%2 == 0:
            return collatz_seq(num//2, len + 1)
        else:
            return collatz_seq(3*num + 1, len + 1)
    else:
        return(len)

current_max_length = 0
current_max_index = 0
for i in range(1,1000001):
    if collatz_seq(i) > current_max_length:
        current_max_length = collatz_seq(i)
        current_max_index = i

print(current_max_index)
