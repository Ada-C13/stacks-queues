require_relative "linked_list"

class Stack

  attr_accessor :store

  def initialize
    @store = LinkedList.new
  end

  def push(element)
    @store.add_first(element)
  end

  def pop
    @store.remove_first()
  end

  def empty?
    @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
