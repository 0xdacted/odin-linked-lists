class Node
  def value
    nil
  end

  def next_node
    nil
  end

end

class LinkedList
  def append(value)
    LinkedList.tail = old_tail
    tail = Node.new
    tail.value = value
    old_tail.next_node = tail
  end

  def prepend(value)
    LinkedList.head = old_head
    head = Node.new
    head.value = value
    head.next_node = old_head
  end

  def size
    size = 1
    node_tmp = head
    until(node_tmp == nil)
      node_tmp = node_tmp.next_node
      size += 1
    end
    size 
  end

  def head

  end

  def tail

  end

  def at(index)

  end

  def pop
    
  end

  def contains?(value)

  end

  def find(value)

  end

  def to_s

  end

  def insert_at

  end

  def remove_at

  end

end