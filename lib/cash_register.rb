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
    binding.pry
  def add_item(item, price, quantity=nil)
    @total = @total + price #FIX
  end

end
