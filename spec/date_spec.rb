require 'date_stamp'

describe DateStamp do

  let(:date) {described_class.new }

    it "shows date" do
    expect(date).to respond_to(:date_today)
  end

end
