require 'date_stamp'
require 'date'

describe DateStamp do

  let(:date) {described_class.new }

    it "shows date" do
    expect(date).to respond_to(:transaction_date)
  end

  describe "it records date" do
    it "shows todays date" do
      expect(date.transaction_date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
  end

end
