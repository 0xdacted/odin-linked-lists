require 'pry-byebug'
class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  
  def initialize
    @head = nil
    @tail = nil
  end
  
  def switch_tail(tail)
    self.next_node = @tail
  end
  
  def append(value)
    if @tail != nil
      @old_tail = @tail
      @tail = Node.new(value)
      @old_tail.switch_tail(@tail)
    else
      @tail = Node.new(value)
      @head = @tail
    end
  end

  def prepend(value)
    if @head != nil
      @old_head = @head
      @head = Node.new(value, @old_head)
    else
      @head = Node.new(value)
      @tail = @head
    end
  end

  def size

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

list = LinkedList.new
p list.append(13)