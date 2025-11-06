# frozen_string_literal: true

def stock_picker(prices_for_day)
  prices_for_day.each_with_index
                .to_a
                .combination(2)
                .max_by { |buy, sell| sell[0] - buy[0] }
                .map { |price, day| day }
end

# In terminal: ruby stock_picker.rb
puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) if $PROGRAM_NAME == __FILE__
