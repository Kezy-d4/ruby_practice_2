# Here’s a tricky one. Add a method to the classic LinkedList class that
# reverses the list. That is, if the original list is A -> B -> C,
# all of the list’s links should change so that C -> B -> A.

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

  def reverse! # rubocop:disable Metrics/MethodLength
    current_node = first_node
    aux = []
    until current_node.next_node.nil?
      aux.push(current_node)
      current_node = current_node.next_node
    end
    self.first_node = current_node
    until aux.empty?
      current_node.next_node = aux.pop
      current_node = current_node.next_node
    end
  end
end

# Sample code:
node1 = Node.new("A")
node2 = Node.new("B")
node3 = Node.new("C")

node1.next_node = node2
node2.next_node = node3

list = LinkedList.new(node1)
list.reverse!
