def sum(number)
  total = 0

  number.to_s.split('').each do |digit|
    total += digit.to_i
  end
  total
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)