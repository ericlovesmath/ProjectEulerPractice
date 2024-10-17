# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words,
# how many letters would be used?
#
# NOTE: Do not count spaces or hyphens.
# The use of "and" when writing out numbers is in compliance with British usage.

def to_english(n):
	if 0 <= n < 20:
		return ones[n]
	elif 20 <= n < 100:
		return tens[n // 10] + (ones[n % 10] if (n % 10 != 0) else "")
	elif 100 <= n < 1000:
		return ones[n // 100] + "hundred" + (("and" + to_english(n % 100)) if (n % 100 != 0) else "")
	elif 1000 <= n < 1000000:
		return to_english(n // 1000) + "thousand" + (to_english(n % 1000) if (n % 1000 != 0) else "")


ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine",
        "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

print ( sum(len(to_english(i)) for i in range(1,1001)) )