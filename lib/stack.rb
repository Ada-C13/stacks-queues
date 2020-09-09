class Stack
  def initialize
    @store = LinkedList.new
  end

  # Adds the value to the top of the stack
  def push(value)
    @store.add_last(value)
  end

  # Removes and returns an element from the top of the stack
  def pop
    return nil if @store.empty?

    @store.remove_last
  end

  # returns true if the stack is empty and false otherwise
  def empty?
    return true if @store.empty?
    return false # if not empty
  end

  def to_s
    return @store.to_s
  end
end
