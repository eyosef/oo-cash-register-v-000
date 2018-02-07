require 'pry'
class CashRegister

  attr_accessor :total, :discount, :prev_total

  def initialize(discount=0)
    @discount = discount
    @total = total || 0
    @prev_total = 0
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)

    self.total = price * quantity
    prev_total = price * quantity
    #new_total = self.total + (price * quantity)
  end

end #class
