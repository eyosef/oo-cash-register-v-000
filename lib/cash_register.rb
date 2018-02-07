class CashRegister

  attr_accessor :new, :total, :discount

  def initialize
    @discount = discount
    @new = new
    @total = 0
  end

  def total
    @total
  end

  def add_item(item, price, quantity)
    @total = @total + price
  end

end
