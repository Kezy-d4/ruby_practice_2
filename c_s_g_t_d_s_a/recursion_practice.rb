def total_characters(arr_of_strings, index = 0, count = 0)
  count += arr_of_strings[index].length
  return count if index == arr_of_strings.length - 1

  total_characters(arr_of_strings, index + 1, count)
end
# arr = ["ab", "c", "def", "ghij"] # rubocop:disable Style/WordArray
# p total_characters(arr)

def only_even_numbers(arr, evens = [])
  if arr.length == 1
    return arr[0].even? ? evens << arr[0] : evens
  end

  evens << arr[0] if arr[0].even?
  only_even_numbers(arr[1..], evens)
end
# p only_even_numbers([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) # => [0, 2, 4, 6, 8, 10]

def triangular_number(num)
  return 0 if num.zero?

  num + triangular_number(num - 1)
end
# p triangular_number(7) # => 28

def first_x(str, idx = 0)
  return idx if str[0] == "x"

  first_x(str[1..], idx + 1)
end
# str = "abcdefghijklmnopqrstuvwxyz"
# p first_x(str)
