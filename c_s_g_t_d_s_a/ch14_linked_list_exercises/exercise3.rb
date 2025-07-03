# Add a method to the classic LinkedList class that returns the last element
# from the list. Assume you don’t know how many elements are in the list.

# Blueprint for instantiating a new node with given data. Each node can link to
# its next node.
class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
  end
end

# Blueprint for instantiating a new linked list with given first node.
class LinkedList
  attr_accessor :first_node

  def initialize(first_node)
    @first_node = first_node
  end

  def last
    current_node = first_node
    current_node = current_node.next_node until current_node.next_node.nil?
    puts current_node.data
  end
end

# Sample code:
node1 = Node.new("Once")
node2 = Node.new("upon")
node3 = Node.new("a")
node4 = Node.new("time")

node1.next_node = node2
node2.next_node = node3
node3.next_node = node4

list = LinkedList.new(node1)
list.last
