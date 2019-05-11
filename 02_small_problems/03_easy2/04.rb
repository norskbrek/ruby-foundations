def prompt(message)
  puts "--> #{message}"
end

prompt("What is your age?")
age = gets.chomp.to_i

prompt("At what age would you like to retire?")
retire = gets.chomp.to_i

years_to_retire = retire - age
current_year = Time.new.year
retire_year = current_year + years_to_retire 

prompt("It's #{current_year}. You will retire in #{retire_year}.")
prompt("You have only #{years_to_retire} years of work to go!")
