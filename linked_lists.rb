class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def append(value)
    @old_tail = LinkedList.tail
    @tail = Node.new(@value)
    @old_tail.next_node = @tail
  end

  def prepend(value)
    @old_head = LinkedList.head
    @head = Node.new(value, @old_head)

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