require_relative "./linked_list.rb"

class Stack
  def initialize
    @list = LinkedList.new
  end

  def push(element)
    @list.add_first(element)
  end

  def pop
    
    @list.remove_first
  end

  def empty?
    return @list.empty?
  end

  def to_s
    return @list.to_s
  end
end
