def greatest_product_of_any_three(array)
  array = array.sort
  array[-1] * array[-2] * array[-3]
end
# p greatest_product_of_any_three([4, 3, 6, 2, 8, 1, 19]) # => 912

def missing_number(array)
  array = array.sort
  array.each_with_index do |num, idx|
    return num + 1 unless array[idx.next] == num + 1
  end
end
# p missing_number([4, 3, 6, 1, 2]) # => 5

def greatest_number_o_n(arr)
  greatest = 0
  arr.each { |num| greatest = num if num > greatest }
  greatest
end
# p greatest_number_o_n([4, 3, 6, 2, 8, 1, 19]) # => 19

def greatest_number_o_n_log_n(arr)
  arr = arr.sort
  arr[-1]
end
# p greatest_number_o_n_log_n([4, 3, 6, 2, 8, 1, 19]) # => 19

def greatest_number_o_n_2(arr) # rubocop:disable Naming/VariableNumber
  greatest = 0
  arr.each do |num_outer|
    arr.each do |num_inner|
      greatest = num_inner if num_inner >= num_outer
    end
  end
  greatest
end
# p greatest_number_o_n_2([4, 3, 6, 2, 8, 1, 19]) # => 19
