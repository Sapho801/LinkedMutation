class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end



def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end


def reverse_list(list, previous=nil)

    while list       
      next_node = list.next_node
      list.next_node = previous 
      previous  = list 
  
      list  = next_node  
    end
end



node1 = LinkedListNode.new(1)
node2 = LinkedListNode.new(2, node1)
node3 = LinkedListNode.new(3, node2)


print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(node1)
