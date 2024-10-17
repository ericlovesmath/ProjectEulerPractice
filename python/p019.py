# |> 1 Jan 1900 was a Monday.
# |> Thirty days has September,
# |> April, June and November.
# |> All the rest have thirty-one,
# |> Saving February alone,
# |> Which has twenty-eight, rain or shine.
# |> And on leap years, twenty-nine.
# |> A leap year occurs on any year evenly divisible by 4, but not on a century unless
#   |>it is divisible by 400.
#
# How many Sundays fell on the first of the month during the twentieth century
#   (1 Jan 1901 to 31 Dec 2000)?

month_sum = [0,31,28,31,30,31,30,31,31,30,31,30,31]
day_of_week = 1
year, month = 1901, 1

count = 0
for x in range(12 * 100 - 1):
    if month == 12:
        month = 1
        year += 1
        day_of_week = (day_of_week + 31) % 7
    elif month == 2 and year % 4 == 0 and year % 400 != 0:
        month += 1
        day_of_week = (day_of_week + 29) % 7
    else:
        month += 1
        day_of_week = (day_of_week + month_sum[month]) % 7

    if day_of_week == 0:
        print(year, month)
        count += 1

print(count)
