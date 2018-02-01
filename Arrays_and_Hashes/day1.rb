def get_max_profit(stock_prices_yesterday)
  max_profit = 0

  stock_prices_yesterday.each_with_index do |earlier_price, earlier_time|
    (stock_prices_yesterday[earlier_time+1..-1]).each do |later_price|
      potential_profit = later_price - earlier_price
      max_profit = [max_profit, potential_profit].max
    end
  end
  max_profit
end

## Runner Code to check results

apple_stock = [10, 7, 5, 8, 11, 9]
p get_max_profit(apple_stock) # Should return 6
