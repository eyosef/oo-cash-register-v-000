require 'pry'
class CashRegister

  attr_accessor :total, :discount, :discounted_total, :prev_total, :final_total, :items

  def initialize(discount=0)
    @discount = discount
    @discounted_total = discounted_total #may not need
    @total = total || 0
    @prev_total = 0 #may not need
    @final_total = 0 #may not need
    @@prices = []
    @@items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times {@@items << item}
    @@prices << price
  end

  def apply_discount
    @total = total - (total * discount / 100)
    return "After the discount, the total comes to $#{@total}." if discount >= 1
    return "There is no discount to apply." if discount <= 0
  end

  def items
    @@items
  end

  def void_last_transaction
     @total - @@prices[-1]
  end


end #class
