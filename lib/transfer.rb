class Transfer
  # your code here
  attr_accessor :amount
  attr_reader :sender, :receiver,:status
  
  def initialize(sender, receiver, amount)
    @amount = amount
    @sender = sender
    @receiver = receiver
    @status = 'pending'
  end
  
  def valid?
    sender.valid? && receiver.valid? ? true: false
  end
  
  def execute_transaction
    if @status == "complete" || valid?
      "Transaction rejected. Please check your account balance."
    else
      sender.balance -= amount
      receiver.balance += amount
      @status = 'complete'
      
    end
  end
  
end
