def sum_until_100(arr) # rubocop:disable Naming/VariableNumber
  return 0 if arr.empty?

  sum_of_remainder = sum_until_100(arr[1..])
  arr[0] + sum_of_remainder > 100 ? sum_of_remainder : arr[0] + sum_of_remainder
end
# p sum_until_100([25, 25, 25, 25, 25, 50])

def golomb(n, memo = {})
  return 1 if n == 1
  return 1 + golomb(n - golomb(golomb(n - 1)), memo) unless memo[n]

  memo[n]
end

def unique_paths(rows, columns, memo = {})
  return 1 if rows == 1 || columns == 1

  unless memo[[rows, columns]]
    return unique_paths(rows - 1, columns, memo) + unique_paths(rows, columns - 1, memo)
  end
  memo[rows, columns]
end
