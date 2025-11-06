# frozen_string_literal: true

def bubble_sort(array)
  array.filter_map
       .with_index do |_, i|
         swapped = false
         (0...array.length - i - 1).each do |j|
           if array[j] > array[j + 1]
             array[j], array[j + 1] = array[j + 1], array[j]
             swapped = true
           end
         end
         break if swapped == false
       end
  array
end

puts bubble_sort([4, 3, 78, 2, 0, 2]) if $PROGRAM_NAME == __FILE__
