# Add a method to the DoublyLinkedList class that prints all the elements of the
# list in reverse order.

# Blueprint for instantiating a new node with given data. This node links to the
# previous node and the next node.
class Node
  attr_accessor :data, :next_node, :previous_node

  def initialize(data)
    @data = data
  end
end

# Blueprint for instantiating a new doubly linked list with given first and last
# nodes.
class DoublyLinkedList
  attr_accessor :first_node, :last_node

  def initialize(first_node = nil, last_node = nil)
    @first_node = first_node
    @last_node = last_node
  end

  def reverse_print_all_nodes
    current_node = last_node
    while current_node
      puts current_node.data
      current_node = current_node.previous_node
    end
  end
end

# Sample code:
node1 = Node.new("Once")
node2 = Node.new("upon")
node3 = Node.new("a")
node4 = Node.new("time")

node1.next_node = node2

node2.previous_node = node1
node2.next_node = node3

node3.previous_node = node2
node3.next_node = node4

node4.previous_node = node3

list = DoublyLinkedList.new(node1, node4)
list.reverse_print_all_nodes
