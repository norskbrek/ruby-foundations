def prompt(message)
  puts "--> #{message}"
end

# launch methods
def compute_sum(number)
  total = 0
  1.upto(number) {|value| total += value}
  total
end

def compute_product(number)
  total = 1
  1.upto(number) {|value| total *= value}
  total
end

prompt("Please enter an integer greater than 0: ")
integer = gets.chomp.to_i

prompt("Enter 's' to compute the sun, 'p' to compute the product.")
choice = gets.chomp

count = 1
if choice == 's'
  sum = 0
  while count <= integer
    sum += count
    count += 1
  end
  prompt("The sum of the integers between 1 and #{integer} is #{sum}.")
elsif choice == 'p'
  product = 0
  product = (1..integer).inject(:*)
  prompt("The product of the integers between 1 and #{integer} is #{product}.")
else
  prompt("Hmm...unknown operation...")
end

