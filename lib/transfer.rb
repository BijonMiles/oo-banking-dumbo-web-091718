require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
    # @transaction = false

  end

  def valid?
    if @sender.valid?  &&  @receiver.valid?
      return true
    else
      return false
    end
  end

  def execute_transaction
    # binding.pry
    # @sender -> instance variable
    # self.sender -> instance method
    if @status == "pending" && @sender.balance >= @amount

       @sender.balance = @sender.balance - @amount
       @receiver.balance += @amount
       @status = "complete"
    else
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."

    end

    def reverse_transfer
      # binding.pry
      if @status == "complete"
        @sender.balance += @amount
        @receiver.balance -=  @amount
        @status = "reversed"
      end
    end
  end

  # escribe '#deposit' do
  #   it "can deposit money into its account" do
  #     expect(avi.balance).to eq(1000)
  #     avi.deposit(1000)
  #     expect(avi.balance).to eq(2000)
  #   end
  # end
  #
  # describe '#display_balance' do
  #   it "can display its balance" do
  #     expect(avi.display_balance).to eq("Your balance is $#{avi.balance}.")
  #   end


  # def status
  #
  # end

end
