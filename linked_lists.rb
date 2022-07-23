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
    
  end

  def prepend(value)
    LinkedList.head = old_head
    head = Node.new
    head.value = value
    head.next_node = old_head
  end

  def size

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