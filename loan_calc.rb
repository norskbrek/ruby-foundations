# LOAN CALCULATOR

# GET
# loan amount
# annual percentage rate (APR)
# loan duration

# PRINT
# monthly interest rate
# loan duration in months
# ==> "You have a monthly interest rate of #{} over the span of #{} months"

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0 || num.to_f != 0
end

prompt("Welcome to the Loan Calculator!")
prompt("Please enter your name: ")

name = ''
loop do
  name = gets.chomp.capitalize

  if name.empty?
    prompt("Please enter a valid name.")
  else
    break
  end
end

prompt("Welcome, #{name}!")

# main loop
loop do
  # loan amount
  loan_amount = ''
  loop do
    prompt("Please enter your loan amount: ")
    loan_amount = gets.chomp

    if valid_number?(loan_amount)
      break
    else
      prompt("Please enter a valid amount.")
    end
  end

  # APR
  annual_percentage = ''
  loop do
    prompt("Please enter your APR: (example: .05) ")
    annual_percentage = gets.chomp

    if valid_number?(annual_percentage)
      break
    else
      prompt("Please enter a valid percentage")
    end
  end

  # loan in years
  loan_years = ''
  loop do
    prompt("Please enter your loan duration in years: ")
    loan_years = gets.chomp

    if valid_number?(loan_years)
      break
    else
      prompt("Please enter a valid amount.")
    end
  end

  prompt("Calculating your monthly rate...")

  loan_amount = loan_amount.to_i
  monthly_percentage_rate = annual_percentage.to_f / 12
  loan_months = loan_years.to_i * 12

  # calculate!
  monthly_payment = (loan_amount * 
                    (monthly_percentage_rate / 
                    (1 - (1 + monthly_percentage_rate)**(-loan_months)))).floor(2)

  prompt("Your payments are #{monthly_payment} per month for #{loan_months} months.")
  prompt("Would you like to calculate another loan? ('Y' to continue)")
  answer = gets.chomp.downcase
  break if answer != 'y'
end

prompt("Thank you for using the loan calculator!")
