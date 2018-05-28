class CashRegister
  attr_accessor :total, :discount, :items

  def initialize (discount = 0.0)
    @total = 0
    @discount = discount.to_f
  end

  def add_item (item, cost, quantity = 1)
    @total += cost*quantity
  end

  def apply_discount
    if discount == 0.0
      puts "There is no discount to apply."
    else
      @total = @total*(@discount/100)
      puts "After the discount, the total comes to $#{total}."
    end
  end
end
