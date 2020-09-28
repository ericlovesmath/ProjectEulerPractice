def is_palindrome(num):
    return str(num)[::-1] == str(num)

trips = [a*b for a in range(100,1000)
            for b in range(100,1000)
            if is_palindrome(a*b)]

print(max(trips))