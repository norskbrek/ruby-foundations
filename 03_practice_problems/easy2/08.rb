advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0, 38)

# slice! mutates the original string,
# but slice will not mutate.
# Both return the sliced portion.

# launch solution:
advice.slice!(0, advice.index('house'))
# ^^^ I see what they did there...