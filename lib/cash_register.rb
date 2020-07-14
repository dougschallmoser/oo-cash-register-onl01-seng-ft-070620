require 'pry'

# 1. Build a CashRegister class
#   -Set an instance variable @total = 0 upon initialization
#   -Optionally take an employee discount upon initialization
# 2. Build #add_item method, that:
#    -Accepts a title and price, and increase the total
#    -Accepts an optional quantity
#    -Doesn't forget about the previous total
# 3. Build #apply_discount method, that:
#    -Cash Register WAS initialized with discount:
#       -Applies discount to total
#       -Returns success messsage with updated total
#       -Reduces total 
#    -Cash Register was NOT initialized with discount:
#       -Returns an error message as a string
# 4. Build an #items method that returns an array containing
#       all items (note: quantity) that have been added
# 5. Build a #void_last_transaction method that:
#    -Subtracts the last item from the total
#    -Returns the total to 0.0 if all items have been
#    -Removed

class CashRegister

    attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_total
    

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end 

    def add_item(title, price, quantity = 1)
        @last_total = self.total 
        self.total += price * quantity
        @title = title 

        i = 0
        until i == quantity
        @items << title
        i += 1
        end 
    end 

    def apply_discount
        if self.discount != 0
            self.total = (total - total*(discount.to_f/100)).to_i
            "After the discount, the total comes to $#{total}."
        else 
            "There is no discount to apply."
        end 
    end 


    def void_last_transaction
        self.total = @last_total
    end 

end 