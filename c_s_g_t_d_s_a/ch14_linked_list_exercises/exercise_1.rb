# Add a method to the classic LinkedList class that prints all the elements of
# the list.

# Blueprint for instantiating a new node with given data.
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

  def print_all_nodes
    current_node = first_node
    while current_node
      puts current_node.data
      current_node = current_node.next_node
    end
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
list.print_all_nodes
