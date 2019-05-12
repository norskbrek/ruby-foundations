statement = "The Flintstones Rock!"

statement.split('').select {|letter| letter == 't'}

# launch solution:
statement.count('t')
# ^^^ hey, now I know...