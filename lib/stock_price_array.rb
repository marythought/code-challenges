test = [10, 7, 5, 8, 11, 9]
a = [100, 50, 40, 20, 1]

def get_max(a)
  buy = a[0]
  sell = a[1]
  best_profit = sell - buy
  a.each_with_index do |price, index|
    if price < buy
      buy = price
      sell = a[index+1]

    sell = price > sell ? sell : price
    best_profit = (sell - buy) > best_profit ? sell - buy : best_profit
  end
  best_profit
end

puts "#{get_max(test)} should eql 6"
puts "#{get_max(a)} should eql -19"

####

def get_max_profit(stock_prices)
  max_profits = []
  until stock_prices.empty?
    buy = stock_prices.shift
    sales = []
    stock_prices.each do |price|
      sales << (price - buy)
    end
    max_profits << sales.max if !sales.empty?
  end
  max_profits.max
end

stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

get_max_profit(stock_prices_yesterday)
# returns 6 (buying for $5 and selling for $11)
