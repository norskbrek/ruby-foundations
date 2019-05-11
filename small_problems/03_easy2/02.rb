def prompt(message)
  puts "--> #{message}"
end

prompt("Enter the length of the room in meters: ")
length = gets.chomp.to_f
prompt("Enter the width of the room in meters: ")
width = gets.chomp.to_f 

area_in_meters = (length * width).round(2) 
area_in_feet = (area_in_meters * 10.7639).round(2)

prompt("The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet)")
