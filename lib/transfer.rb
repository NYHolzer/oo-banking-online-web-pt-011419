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
    binding.pry
    BankAccount.all.include?(self.sender || self.receiver)
  end 
  
end
