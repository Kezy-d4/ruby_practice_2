def first_duplicate(arr)
  index = arr.each_with_object({}) { |elem, hash| hash[elem] = false }
  arr.each do |elem|
    return elem if index[elem] == true

    index[elem] = true
  end
end

# p first_duplicate(%w[a b d d c c e f]) # => "d"

def missing_letter(str)
  index = {}
  alphabet = "a".."z"
  str.each_char { |char| index[char] = true }
  alphabet.each { |ltr| return ltr unless index[ltr] }
end

# str = "the quick brown box jumps over a lazy dog"
# p missing_letter(str)
