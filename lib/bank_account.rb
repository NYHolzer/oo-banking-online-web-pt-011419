class BankAccount
  
  attr_accessor :balance, :status
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    @@all << self
  end
  
  def deposit(amount) 
    @balance += amount
  end 
  
  def display_balance
    "Your balance is $#{self.balance}."
  end 
  
  def valid? 
    self.status == "open" && self.balance > 0 
  end 
  
  def close_account 
    self.status = "closed"
  end
  
  def self.all 
    @@all
  end 

end
