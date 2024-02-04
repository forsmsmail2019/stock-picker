def stock_picker(stock_prices)
  best_buy_index = -1
  best_sell_index = -1
  bestt_profit = 0
  stock_prices.each_with_index {|stock_price, index|
  puts "#{index} : #{stock_price}"
 }

end

stock_picker([1,2,3,4,5])
