require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item
  @@array_of_items = []
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
  end
  
  def add_item(itemx, price, quantity = 1)
    new_total = price*quantity
    @total += new_total
    @item = itemx
    array_of_items << itemx
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
  
  # def items
end #end of class 