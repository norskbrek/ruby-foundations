answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# 34
# "answer" isn't modified by the method, 
# so it remains 42. 
# also, new_answer is not output to the terminal.