require './linked_list'

class Queue

  def initialize
    @queue = LinkedList.new
  end

  def enqueue(element)
    @queue.add_last(element)
  end

  def dequeue
    return @queue.remove_first
  end

  def front
    return @queue.get_first
  end

  def size
    return @queue.length
  end

  def empty?
    return @queue.empty?
  end

  def to_s
    return @queue.to_s
  end
end
