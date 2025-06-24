class Stack
  def initialize
    @data = []
  end

  def push(element)
    @data << element
  end

  def pop
    @data.pop
  end

  def read
    @data.last
  end
end

def reverse(str)
  stack = Stack.new
  str.each_char { |char| stack.push(char) }

  reversed = ""
  str.length.times { reversed << stack.pop }
  reversed
end

str = "abcde"
p reverse(str)
