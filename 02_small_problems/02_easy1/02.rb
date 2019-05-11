def is_odd?(num)
  if (num).abs % 2 == 1
    return true
  else
    return false
  end
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(0)
puts is_odd?(-8)
puts is_odd?(7)