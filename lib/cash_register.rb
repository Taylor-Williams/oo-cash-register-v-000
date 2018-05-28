class CashRegister
  attr_accessor :total, :discount, :items

  def initialize (discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item (item, cost, quantity = 1)
    @total += cost*quantity
  end

  def apply_discount
    @total = @total - @discount
  end
end
