class Queue

  def initialize
    @store = LinkedList.new
  end

  def enqueue(element)
    @store.add_last(element)
    return @store.get_last.to_s
  end

  def dequeue 
    # removes and returns a value from the front of the queue
    return nil if self.empty?
    return @store.remove_first
  end

  def front
    return nil if self.empty?
    item = @store.get_last
    return item
  end

  def size
    # return 0 if self.empty?
    # return @list.length
  end

  def empty?
    return @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
