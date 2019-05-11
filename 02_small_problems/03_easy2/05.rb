puts "What is your name?"
name = gets.chomp

if name.include?('!')
  name.upcase!.delete!('!')
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name.capitalize}."
end
  
# launch answer:
if name[-1] == '!'
  name = name.chop # removes last character
end
