

class Account

attr_reader :balance, :transactions, :date

  def initialize()
    @balance = 0
    @transactions = []
    @date = DateStamp.new.transaction_date
  end

  def deposit(credit)
    @credit = credit
    @balance += @credit
    @transactions << [@date, @credit, '', @balance]
  end

  def withdrawl(debit)
    raise "Insufficient funds: Please make another selection" if debit > @balance
    @debit = debit
    @balance -= @debit
    @transactions << [@date, '', @debit, @balance]
  end

  def statement

  end

end
