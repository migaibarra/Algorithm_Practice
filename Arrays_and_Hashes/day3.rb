## Notes: This is my attempt at a brute force implementation of the day3 algorithm

# def product_of_three(array_of_ints)
#   product_of_three_array = []

def product_of_two(inner_array_of_ints)
  product_of_two_array = []
  inner_array_of_ints.each_with_index do |integer, index|
    i = index
    while i < inner_array_of_ints.length
      product_of_two_array << integer * inner_array_of_ints[i + 1]
      i += 1
    end
    i = index
    while i > 0
      product_of_two_array << integer * inner_array_of_ints[i - 1]
      i -= 1
    end
  end
  return product_of_two_array
end

#   product_of_three_array << product_of_two(product_of_two(array_of_ints))
#   return product_of_three_array.max
# end

## RUNNER CODE

p product_of_two([7, 3, 9, 5, 7]).max
