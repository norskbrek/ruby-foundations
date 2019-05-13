def factors(number)
  divisor = number
  factors = []

  while divisor > 0 do
    factors << (number / divisor) if (number % divisor == 0)
    divisor -= 1
  end
  factors
end

# Bonus 1: To check if number is cleanly divisible by the divider (i.e. remainder is zero)
# Bonus 2: It ensures that the factors array is returned from the method (it's the last line in the method)

puts factors(6)
puts factors(0)
puts factors(-27)