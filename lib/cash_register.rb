require 'pry'
class CashRegister
  attr_accessor :total, :discount
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
  end
  
  def add_item(item, price, quantity = 1)
    new_total = price*quantity
    @total += new_total
  end
  
  def apply_discount
    if @discount != 0
      pc_discount = 1 - @discount/100.0 
      @total = @total*pc_discount    
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      
      #binding.pry
    end 
  end
end #end of class 