def prompt(message)
  puts ("--> #{message}")
end

prompt("What is the bill?")
bill = gets.chomp.to_f

prompt("What is the tip percentage?")
percent = gets.chomp.to_f / 100

tip_amount = (bill * percent).round(2)
total_amount = (bill + tip_amount).round(2)

prompt("The tip is $#{tip_amount}")
prompt("The total is $#{total_amount}")
