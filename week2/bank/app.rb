require_relative 'bank'

checking_account = Bank::Checking_account.new(30)
puts "Checking account was succesfully created"
checking_account.show_balance

value1 = 45
checking_account.deposit(value1)
puts "\nYou received a R$ #{value1.to_f.round(2)} deposit."
checking_account.show_balance

puts "\nSavings Account:"

savings_account = Bank::Savings_account.new(70)
puts "Checking account was succesfully created"
savings_account.show_balance

value2 = 100
savings_account.deposit(value2)
puts "\nYou received a R$ #{value2.to_f.round(2)} deposit."
savings_account.show_balance

number_of_months = 3
balance = savings_account.instance_variable_get(:@balance)
income = - balance.round(2) + savings_account.add_interest(number_of_months)

puts "\n #{number_of_months} months have passed and you received R$ #{income.to_f.round(2)}."

savings_account.show_balance