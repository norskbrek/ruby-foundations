def teddys_age(name='Teddy')
  puts "Give me a name: "
  name = gets.chomp
  name = 'Teddy' if name.empty?

  age_range = (20..200).to_a
  puts "#{name} is #{age_range.sample} years old!"
end

teddys_age
