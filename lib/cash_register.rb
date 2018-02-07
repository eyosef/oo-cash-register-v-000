require 'pry'
class CashRegister

  attr_accessor :new, :total, :discount

  def initialize(discount=0)
    @discount = discount
    @new = new
    @total = 0
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    self.total = price * quantity
    @total
  end

end #class
