require_relative 'linked_list.rb'

class Stack
  def initialize
    # @store = ...
    @store = LinkedList.new
  end

  def push(element)
    return @store.add_first(element)
  end

  def pop
    return nil if self.empty?
    return @store.remove_first()
  end

  def empty?
    return @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
