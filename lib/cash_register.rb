require 'pry'
class CashRegister

  attr_accessor :total, :discount, :discounted_total, :prev_total, :final_total, :items

  def initialize(discount=0)
    @discount = discount
    @discounted_total = discounted_total #may not need
    @total = total || 0
    @prev_total = 0 #may not need
    @final_total = 0 #may not need
    @@items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    if quantity > 1
      then (@@items << item)quantity.times
    end
    # prev_total = price * quantity
    # final_total = prev_total + (price * quantity)
    # final_total
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
  end


end #class
