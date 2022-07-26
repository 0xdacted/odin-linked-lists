require 'pry-byebug'
class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :tail, :head
  def initialize
    @head = nil
    @tail = nil
  end
   
  def append(value)
    if @tail != nil
      old_tail = @tail
      @tail = Node.new(value)
      old_tail.next_node = @tail
    else
      @tail = Node.new(value)
      @head = @tail
    end
  end

  def prepend(value)
    if @head != nil
      old_head = @head
      @head = Node.new(value, old_head)
    else
      @head = Node.new(value)
      @tail = @head
    end
  end

  def size
    if @head != nil
      size = 0
      current_node = @head
      until current_node.nil?
        current_node = current_node.next_node
        size += 1
      end
    else
      size = 0
    end
    size
  end

  def at(index)
    if @head != nil
      current_node = @head
      index.times do
        current_node = current_node.next_node 
      end
      current_node
    else
      p "The list is empty"
    end
  end

  def pop
    if @tail != nil
     former_tail = at(self.size - 1)
     @tail = at(self.size - 2)
     @tail.next_node = nil
    end
    former_tail
  end

  def contains?(value)
    current_node = @head
    self.size.times do
      if current_node.value == value
        return true
      elsif current_node == @tail
        return false
      else
      current_node = current_node.next_node
      end
    end
  end

  def find(value)
    index = 0
    current_node = @head
    self.size.times do
      if current_node.value == value
        return index
      elsif current_node == @tail
        return nil
      else
      current_node = current_node.next_node
      index += 1
      end
    end
  end

  def to_s
    current_node = @head
    self.size.times do
     p "#{current_node.value}"
      current_node = current_node.next_node 
    end
  end

  def insert_at(value, index)
    if self.at(index) == @head  
      self.prepend(value)
    
    elsif self.at(index) != nil  
      insertion = Node.new(value)
      left_value = self.at(index - 1)
      right_value = self.at(index)
      left_value.next_node = insertion
      insertion.next_node = right_value
    else
      self.append(value)
    end
  end

  def remove_at(index)
    removed_value = self.at(index)
    left_value = self.at(index - 1)
    right_value = self.at(index + 1)
      if self.at(index) == @head
        removed_value.next_node = nil
        @head = right_value

      elsif self.at(index) == @tail
        left_value.next_node = nil
        @tail = left_value

      else
      left_value.next_node = right_value
    end
  end
end




list = LinkedList.new
list.append(13)
list.prepend(20)
list.append(15)
list.prepend(25)



