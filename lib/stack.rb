class Stack
  def initialize
    @stack = LinkedList.new
  end

  def push(element)
    @stack.add_last(element)
  end

  def pop
    @stack.remove_last()
  end

  def empty?
    @stack.empty?
  end

  def to_s
    return @store.to_s
  end
end
