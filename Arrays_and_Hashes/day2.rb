def get_product_of_all_ints_except_at_index(int_array)
  raise IndexError, "Getting the product of numbers at other indices requires at least 2 numbers" if int_array.length < 2
  
  int_array.map.with_index do |x, i|
    if i == 0
      x = int_array[1..-1].reduce(&:*)
    else
      x = (int_array[0..i-1] + int_array[i+1..-1]).inject(&:*)
    end
  end
end

## RUNNER CODE

p get_product_of_all_ints_except_at_index([1,7,3,4]) # should return [84,12,28,21]

# p get_product_of_all_ints_except_at_index([10,4,5,1]) # should return [20, 50, 40, 200]

# p get_product_of_all_ints_except_at_index([0,0,0,0]) # should return [0, 0, 0, 0]
