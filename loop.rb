class Node
      attr_accessor :next 
end

def loop_size(node)
  #detect loop
  #http://en.wikipedia.org/wiki/Cycle_detection#Tortoise_and_hare
  i = node
  j = node
  while true do
    i = i.next
    j = j.next
    j = j.next
    if i.singleton_class == j.singleton_class
      break
    end
  end

  #measure loop  
  len = 0  
  while true
    len += 1
    i = i.next
    if i.singleton_class == j.singleton_class
      break
    end
  end
  return len
end

#use this if you want to create your code on you computer the class of the node is in the description
def create_chain_for_test(tail_size, loop_size)
  prev_node = start = Node.new
  start.next = start
  return start if loop_size == 1
  (1..tail_size).each do |i|
    prev_node.next = Node.new
    prev_node = prev_node.next
  end
  end_loop = prev_node
  (1...loop_size).each do |i|
    prev_node.next = Node.new
    prev_node = prev_node.next
  end
  prev_node.next = end_loop
  start
end

p loop_size(create_chain_for_test(3, 9))
