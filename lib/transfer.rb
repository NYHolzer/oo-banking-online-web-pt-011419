require 'pry'
class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = 50 
    @status = "pending"
  end 
  
  def valid? 
    sender.valid? && receiver.valid?
  end 
  
  def execute_transaction
    sender.balance -= 50
    receiver.balance += 50
  end 
  
end
