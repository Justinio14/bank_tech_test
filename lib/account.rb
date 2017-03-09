

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
    puts "date       " + "||" + " credit   " + "||" + " debit    " + "||" + " balance  "
    @transactions.each do |x|
    puts  " #{[x][0]}" + "||" + " #{[x][1]}  " + "||" + " #{[x][2]} " + "||" + " #{[x][3]} "
    end
  end

end
