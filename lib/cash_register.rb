require 'pry'
class CashRegister

  attr_accessor :total, :discount, :discounted_total, :prev_total, :final_total

  def initialize(discount=0)
    @discount = discount
    @discounted_total = discounted_total
    @total = total || 0
    @prev_total = 0
    @final_total = 0
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    # prev_total = price * quantity
    # final_total = prev_total + (price * quantity)
    # final_total
  end

  def apply_discount
    #@total = total - (total * discount / 100) #does equal 800
    puts "After the discount, the total comes to $#{@total}." if @total = total - (total * discount / 100)
  end

end #class
