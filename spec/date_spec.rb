require 'date_stamp'
require 'date'

describe DateStamp do

  let(:date) {described_class.new }

    it "shows date" do
    expect(date).to respond_to(:date_today)
  end

  describe "it records date" do
    it "shows todays date" do
      expect(date.date_today).to eq(Time.now.strftime("%m/%d/%Y"))
    end
  end

end
