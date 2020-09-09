class Stack
  def initialize
    @stack = LinkedList.new
  end

  def push(element)
    @stack.add_front(element)
  end

  def pop
    return nil if self.empty?

    element = stack.remove_front

    return element
  end

  def empty?
    return @stack.empty?
  end

  def to_s
    return @stack.to_s
  end
end
