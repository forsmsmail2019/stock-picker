def stock_picker(stock_prices)
  best_buy_index = -1
  best_buy = -1
  best_sell = -1
  best_sell_index = -1
  best_profit = 0
  resul = [-1,-1]
  stock_prices.each_with_index do |stock_price, index|
    for j in index..stock_prices.size-1
      profit = stock_prices[j] - stock_price
      #puts profit
      if (profit > best_profit) && (stock_prices[j] > stock_price) && (index < j)
        #puts "sell by : #{stock_price}"
        #puts "buy by: #{stock_prices[j]}"
        best_profit = profit
        best_buy_index = index
        best_sell_index = j
        resul[0] = best_buy_index
        resul[1] = best_sell_index
      end
      #puts "#{index} : #{stock_price} and j : #{j}"
    end
  end
#puts best_profit
#puts best_buy_index
#puts best_sell_index
puts "#{resul} for a profit of #{stock_prices[resul[1]]} - #{stock_prices[resul[0]]} =  #{stock_prices[resul[1]]- stock_prices[resul[0]]} "
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
