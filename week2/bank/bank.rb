module Bank
  class Account
    @balance = 0

    def initialize(balance = 0)
      @balance = balance
    end

    def deposit(value)
      @balance += value
    end
    
    def show_balance
      puts "Current Balance: R$ #{@balance.to_f.round(2)}"
    end
  end

  class Checking_account < Account
  end

  class Savings_account < Account
    def add_interest(number_of_months = 1)
      @balance *= 1.02 ** (number_of_months)
    end
  end
end