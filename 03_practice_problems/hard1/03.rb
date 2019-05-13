# method A) will print:
# one is one
# two is two
# three is three

# the method arguments are new variables one, two, three,
# and only point to the outside variables.

# method B) will print:
# one is one
# two is two
# three is three

# same as the first - the method doesn't mutate anything.
# the outside variables remain unchanged.

# method C) will print: 
# one is two
# two is three
# three is one

# ^^^ because gsub! is a mutating method,
# and mutates the object passed into the method.