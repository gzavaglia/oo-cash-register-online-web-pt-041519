class CashRegister
  attr_accessor :total, :discount
  def initialize(employee_discount = 1)
    @total = 0
    @discount = employee_discount
  end
  
  def add_item(item, price, quantity = 1)
    @total = price*quantity*@discount
  end
end #end of class 