=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

    > stock_picker([17,3,6,9,15,8,6,1,10])
    => [1,4]  # for a profit of $15 - $3 == $12
=end

def stock_picker(stocks)

    current = 0
    biggest_diff = 0
    t = 0
    compare_from = 0
    elements = stocks.length
    these_days = []


    while t < elements do

      current = stocks[t]
      compare_from = t+1
        while compare_from < elements
          if stocks[compare_from] - stocks[t] > biggest_diff
              biggest_diff = stocks[compare_from] - stocks[t]
              these_days = [biggest_diff,t, compare_from]
          end
            compare_from +=1
        end

        compare_from = 0
        t+=1
    end


puts these_days.join(", ")


end

stock_picker([17,3,6,9,15,8,6,1,10])
