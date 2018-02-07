class CashRegister

  attr_accessor :new, :total, :discount

  def initialize(discount)
    @discount = discount
    @new = new
    @total = 0
  end

end
