class Queue

  def initialize(size=20)
    @store = Array.new
    @size = size
    @front = 0
    @back = 0
  end

  def enqueue(element)
    if @front == (@back + 1) % @size    #in cases where queue is full
      raise StandardError.new("Queue is full")
    else
      @store[@back] = element
      @back = (@back + 1) % @size
    end
  end

  def dequeue
    return nil if self.empty?          #in cases where queue is empty?
    # FIFO
    item = @store[@front]
    @front = (@front + 1) % @size
    return item
  end

  def front
    return @front
  end

  def size
    return @size
  end

  def empty?
    return @front == @back
  end

  def to_s
    return [] if @front == @back
    queue = []
    current = @front

    while current != @back
      queue << @store[current]
      current = (current + 1) % @size
    end

    return queue.to_s
  end
end
