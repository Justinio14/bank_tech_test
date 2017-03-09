require 'account'

describe Account do

  let(:account) {described_class.new }

  describe "account balance" do
    it "shows balance" do
      expect(account).to respond_to(:balance)
    end
  end

  describe "deposit money" do
    it "able to add money" do
      expect(account).to respond_to(:deposit).with(1).argument
    end
  end

end
