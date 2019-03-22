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
    sender.valid? && receiver.valid? ? true: false
  end
  
  def execute_transaction
    if status != "complete" && self.valid? == true
      sender.balance -= amount
      receiver.balance += amount
      self.status = 'complete'
    else
      "Transaction rejected. Please check your account balance."
      self.status = 'rejected'
      
    end
  end
  
end
