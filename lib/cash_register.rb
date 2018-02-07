require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @discount = discount
    @total = total || 0
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    prev_total = []
    self.total = price * quantity
    @total = prev_total + (price * quantity).to_a
  end

end #class
