class CashRegister
  attr_accessor :total, :discount
  def initialize(employee_discount = 1)
    @total = 0
    @discount = employee_discount
  end
  
  def add_item(item, price, quantity = 1)
    new_total = price*quantity
    @total += new_total
  end
  
  def apply_discount
    if @discount != 1
      new_total = @total*@discount
      puts "The total with the discount is #{new_total}"
  end
end #end of class 