require_relative "linked_list"

class Queue

  def initialize
    @list = LinkedList.new
  end

  def enqueue(element)
    @list.add_last(element)
  end

  def dequeue
    return nil if self.empty?

    element = @list.remove_first

    return element
  end

  def front
    @list.get_first
  end

  def size
    @list.length
  end

  def empty?
    return @list.empty?
  end

  def to_s
    return @list.to_s
  end
end
