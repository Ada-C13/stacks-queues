class Node
  attr_reader :data 
  attr_accessor :next
  attr_accessor :previous

  def initialize(value, next_node = nil, previous = nil)
    @data = value
    @next = next_node
    @previous = previous
  end
end

# Doubly linked list
class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def empty?
    return @head.nil? ? true : false
  end

  def add_last(value)
    if @head.nil?
      @head = @tail = Node.new(value)
    else
      new_node = Node.new(value)
      new_node.previous = @tail
      @tail.next = new_node
      @tail = new_node
    end 
  end

  def remove_last
    return nil if @tail.nil?
    
    removed_node = @tail.data
    if @tail == @head
      @tail = @head = nil
    else
      @tail = @tail.previous
      @tail.next = nil
    end

    return removed_node
  end
end

class Stack
  def initialize
    @store = LinkedList.new
  end

  def push(element)
    @store.add_last(element)
  end

  def pop
    @store.remove_last
  end

  def empty?
    @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
