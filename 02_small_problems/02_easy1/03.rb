def digit_list(number)
  number.to_s.split('').to_a
end

puts digit_list(12345)
puts digit_list(7)
puts digit_list(375290)
puts digit_list(444)