class Queue

  def initialize
    @queue = Array.new
  end

  def enqueue(element)
    @queue << element
  end

  def dequeue
    item = @queue[0]
    @queue.delete_at(0)
    return item
  end

  def front
    return @queue[0]
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
