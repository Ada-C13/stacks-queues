require_relative './linked_list.rb'

class Stack
  def initialize
    @stack = LinkedList.new
  end

  def push(element)
    @stack.add_first(element)
  end

  def pop
    return nil if self.empty?

    item = @stack.remove_first

    return item
  end

  def empty?
    return @stack.empty?
  end

  def to_s
    return @stack.to_s
  end
end
