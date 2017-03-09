class DateStamp

  attr_reader :transaction_date

 def initialize
   @transaction_date = Time.now.strftime("%d/%m/%Y")
 end

end
