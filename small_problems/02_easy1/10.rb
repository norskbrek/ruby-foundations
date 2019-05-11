def calculate_bonus(salary, boolean)
  bonus = 0

  if boolean == true
    bonus = salary / 2
  else
    bonus = 0
  end

  bonus
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)