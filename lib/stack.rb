require './linked_list'

class Stack
  def initialize
    @stack = LinkedList.new
  end

  def push(element)
    @stack.add_last(element)
  end

  def pop
    @stack.remove_last
  end

  def empty?
    return @stack.empty?
  end

  def to_s
    return @stack.to_s
  end
end
