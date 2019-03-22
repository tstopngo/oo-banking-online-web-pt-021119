require 'pry'

class Transfer
  # your code here
  attr_accessor :amount, :status
  attr_reader :sender, :receiver
  
  def initialize(sender, receiver, amount)
    @amount = amount
    @sender = sender
    @receiver = receiver
    @status = 'pending'
  end
  
  def valid?
    sender.valid? && receiver.valid? && sender.balance > amount ? true: false
  end
  
  def execute_transaction
    if status != "complete" && valid?
      sender.balance -= amount
      receiver.balance += amount
      self.status = 'complete'
    else
      self.status = 'rejected'
      "Transaction rejected. Please check your account balance."
      
    end
  end
  
  def reverse_transfer
    
  end
  
end
