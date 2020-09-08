class Queue

  def initialize
    @store = LinkedList.new
  end

  def enqueue(element)
    @store.add_last(element)
  end

  def dequeue
    @store.remove_first()
  end

  def front
    @store.get_first
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
