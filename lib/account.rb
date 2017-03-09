class Account

attr_reader :balance

  def initialize()
    @balance = 0
  end

  def deposit(credit)
    @credit = credit
    @balance += @credit
  end

  def withdrawl(debit)
    raise "Insufficient funds: Please make another selection" if debit > @balance
    @debit = debit
    @balance -= @debit
  end


end
