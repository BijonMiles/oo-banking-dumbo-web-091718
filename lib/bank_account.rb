class BankAccount

  attr_reader :name
  attr_accessor :deposit, :status, :balance

  def initialize(name)
    @name = name
    # @deposit = deposit
    @balance = 1000
    @status = "open"

  end

  def deposit(deposit)
    # self.balance + amount
    @balance += deposit
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    if @status == "open" && @balance > 0
      return true
    else
      return false
    end
  end

  def close_account
    self.status = "closed"
  end

end
