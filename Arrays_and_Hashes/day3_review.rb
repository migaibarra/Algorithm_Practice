# This is the day 3 implementation of the product_of_3 algorithm

def highest_product_of_3(array_of_ints)
  raise ArgumentError, 'Less than 3 integers' if array_of_ints.length < 3

  highest = array_of_ints.first(2).max
  lowest = array_of_ints.first(2).min

  highest_product_of_2 = array_of_ints[0] * array_of_ints[1]
  lowest_product_of_2 = array_of_ints[0] * array_of_ints[1]

  highest_product_of_3 = array_of_ints[0] * array_of_ints[1] * array_of_ints[2]

  array_of_ints.each_with_index do |current, index|
    next if index < 2

    highest_product_of_3 = [
      highest_product_of_3,
      current * highest_product_of_2,
      current * lowest_product_of_2
    ].max

    highest_product_of_2 = [
      highest_product_of_2,
      current * highest,
      current * lowest
    ].max

    lowest_product_of_2 = [
      lowest_product_of_2,
      current * highest,
      current * lowest
    ].min

    highest = [highest, current].max

    lowest = [lowest, current].min
  end

  highest_product_of_3
end

p highest_product_of_3([1, 10, -5, 1, -100])
p highest_product_of_3([7, 3, 9, 5, 7])
