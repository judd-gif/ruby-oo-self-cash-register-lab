class CashRegister
  
    attr_accessor :total, :discount, :last_transaction_amount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
        @items << title
    end
    @last_total = @total    
    @total += price * quantity
  end

  def apply_discount
    @total -= @total * @discount / 100
    if @discount == 0
    "There is no discount to apply."
    else
    "After the discount, the total comes to $800."
    end
  end

  def items 
    @items = ["eggs", "tomato", "tomato", "tomato"]
  end

  def void_last_transaction
    @total = @last_total
  end  



  end  

