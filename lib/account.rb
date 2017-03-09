

class Account

  attr_reader :balance

HEADERS = %w{date credit debit balance}
SEPERATOR = " || "

  def initialize()
    @balance = 0
    @transactions = []
    @date = DateStamp.new.transaction_date
  end

  def deposit(credit)
    @credit = credit
    @debit = 0
    transaction
  end

  def withdrawl(debit)
    raise "Insufficient funds: Please make another selection" if debit > @balance
    @debit = debit
    @credit = 0
    transaction
  end

  def balance_check
    @balance += (@credit - @debit)
  end

  def statement
    @transactions
  end


private

  def transaction
    balance_check
    @transactions << [@date, @credit, @debit, @balance]
  end

  def header
      HEADERS.join(SEPERATOR)
  end


end
