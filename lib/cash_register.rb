require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item, :last_transaction
  @@array_of_items = []
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @@array_of_items = []
  end
  
  def add_item(itemx, price, quantity = 1)
    new_total = price*quantity
    @total += new_total
    @item = itemx
    quantity.times do
      @@array_of_items << self.item
    end
    @last_transaction = @total
  end
  
  def apply_discount
    if @discount != 0
      pc_discount = 1 - @discount/100.0 
      @total = @total*pc_discount    
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end 
  end
  # binding.pry
  def items
   @@array_of_items
  end 
  
  def void_last_transaction
    @total -= @last_transaction
  end
end #end of class 