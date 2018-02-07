require 'pry'
class CashRegister

  attr_accessor :new, :total, :discount

  def initialize(discount=nil)
    @discount = discount
    @new = new
    @total = 0
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    @total = price * quantity
    @total
    while quantity
  end

end
