limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

# method cannot access variables outside of their scope.
# limit is inaccessible within fib.
# Fix? Add limit a an additional argument ^^^