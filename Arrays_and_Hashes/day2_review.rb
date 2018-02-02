def get_products_of_all_ints_except_at_index(int_array)

  raise IndexErrror, 'Getting the product of numbers at other indices requires at least 2 numbers' if int_array.length < 2

  products_of_all_ints_except_at_index = []

  product_so_far = 1
  i = 0

  while i < int_array.length
    products_of_all_ints_except_at_index[i] = product_so_far
    product_so_far *= int_array[i]
    i += 1
  end

  product_so_far = 1
  i = int_array.length - 1

  while i >= 0
    products_of_all_ints_except_at_index[i] *= product_so_far
    product_so_far *= int_array[i]
    i -= 1
  end

  return products_of_all_ints_except_at_index
end

## RUNNER CODE

p get_products_of_all_ints_except_at_index([1,7,3,4]) # should return [84,12,28,21]

p get_products_of_all_ints_except_at_index([10]) # should return [20, 50, 40, 200]

# p get_product_of_all_ints_except_at_index([0,0,0,0]) # should return [0, 0, 0, 0]
