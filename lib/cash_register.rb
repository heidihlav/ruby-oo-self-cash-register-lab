require 'pry'

class CashRegister

    attr_reader :discount, :items
    attr_accessor :total, :price 
 

    def initialize(discount = 0)
        @total = 0 
        @discount = discount
        @items = []
        @price = 0
    end

    def add_item(title, price, quantity = 1)
        quantity.times do
            self.items << title
        end
        self.price = price * quantity
        self.total += price * quantity
        # binding.pry
    end

    def apply_discount
        if self.discount > 0
          self.total = self.total - self.discount.to_f / 100 * self.total
          "After the discount, the total comes to $#{self.total.to_i}."
        else
          "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.price

    end




end

# binding.pry
