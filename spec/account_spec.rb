require 'account'


describe Account do

  let(:account) {described_class.new }

  describe "account balance" do
    it "shows balance" do
      expect(account).to respond_to(:balance)
    end

    it "shows a balance of 0" do
      expect(account.balance).to eq(0)
    end
  end


  describe "deposit money" do
    it "able to add money" do
      expect(account).to respond_to(:deposit).with(1).argument
    end

    it "a 1000 deposit increases balance by 1000" do
      expect{account.deposit(1000)}.to change{account.balance}.by(1000)
    end
  end

  describe "deposit money" do
    it "able to withdrawl money" do
      expect(account).to respond_to(:withdrawl).with(1).argument
    end

    it "a 500 withdrawl decreases balance by 500" do
      account.deposit(1000)
      expect{account.withdrawl(500)}.to change{account.balance}.by(-500)
    end

      it "a raises and error if withdrawl amount exceeds balance " do
        account.deposit(100)
        expect{account.withdrawl(200)}.to raise_error("Insufficient funds: Please make another selection")
      end

  end


end
