def stringy(num)

  count = 1
  string = ''

  while count <= num
    if count.odd?
      string << '1'
    else
      string << '0'
    end
    count += 1
  end

  return string 
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)