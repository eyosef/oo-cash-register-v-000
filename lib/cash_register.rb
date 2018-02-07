class CashRegister

  attr_accessor :new, :total, :discount

  def initialize(discount=nil)
    @discount = discount
    @new = new
    @total = 0
  end

  def total
    @total = @total + price
  end

  def add_item(item, price, quantity=nil)
    @total = @total + price
  end

end
