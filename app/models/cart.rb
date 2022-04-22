class Cart < ApplicationRecord
    has_many :order_items

    def total_quantity
      @count = 0

      order_items.all.each do |item|
        @count += item.quantity
      end

      @count
    end

    def total_price
      @total = 0

      order_items.all.each do |item|
        @total += item.product.price * item.quantity
      end

      @total
    end

    def total_price_in_dollars
      total_price / 100
    end
end
