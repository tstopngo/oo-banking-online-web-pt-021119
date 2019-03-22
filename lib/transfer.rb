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
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    
  end
  
end
