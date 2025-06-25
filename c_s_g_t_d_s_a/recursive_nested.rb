def print_nested_numbers(arr, idx = 0)
  return if idx == arr.length

  if arr[idx].is_a?(Integer)
    p arr[idx]
    print_nested_numbers(arr, idx + 1)
  elsif arr[idx].is_a?(Array)
    print_nested_numbers(arr[idx], 0)
  end
end

print_nested_numbers([1, [2, 3, [4, [5, 6]]]])
