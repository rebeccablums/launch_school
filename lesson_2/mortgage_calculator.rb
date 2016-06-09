def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to the Mortgage and Car Loan Calculator!")

  prompt("What's the loan amount in dollars?")

  loan_amount = ""
  loop do
    loan_amount = Kernel.gets().chomp()

    if loan_amount.empty? || loan_amount.to_f() < 0
      prompt("Hmm... please enter a positive number")
    else
      break
    end
  end

  prompt("What is the annual interest rate?")
  prompt("For example, 10 for 10% and 3.5 for 3.5%")

  interest_rate = ""
  loop do
   interest_rate = Kernel.gets().chomp()

   if interest_rate.empty? || interest_rate.to_f() < 0
     prompt("Hmm... please enter a positive number")
    else
      break
    end
  end

  prompt("What is your loan duration in years?")

  loan_duration = ""
  loop do
    loan_duration = Kernel.gets().chomp()

   if loan_duration.empty? || loan_duration.to_f() < 0
      prompt("Hmm... please enter a positive number")
    else
      break
   end
  end

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  loan_duration_months = loan_duration.to_i() * 12

  monthly_payment = loan_amount.to_f() * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-loan_duration_months.to_i()))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  prompt("Do you want to do another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for using the Mortgage and Car Loan Calculator! Bye!")

