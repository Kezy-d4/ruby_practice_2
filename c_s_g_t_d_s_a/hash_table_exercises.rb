def first_duplicate(arr)
  index = arr.each_with_object({}) { |elem, hash| hash[elem] = false }
  arr.each do |elem|
    return elem if index[elem] == true

    index[elem] = true
  end
end

p first_duplicate(%w[a b d d c c e f]) # => "d"
