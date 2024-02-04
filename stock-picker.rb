def stock_picker(stock_prices)
  best_buy_index = -1
  best_buy = -1
  best_sell = -1
  best_sell_index = -1
  best_profit = 0
  stock_prices.each_with_index {|stock_price, index|

  for j in index..stock_prices.size

    puts "#{index} : #{stock_price} and j : #{j}"


  best_buy_index = index
  end
 }

end

stock_picker([17,3,6,9,15,8,6,1,10])
