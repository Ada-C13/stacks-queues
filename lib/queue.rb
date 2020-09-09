class Queue

# Using a circular buffer with an internal array starting at 20 elements, implement a Queue

  def initialize
    @store = Array.new(20)
    @size = 20
    @front = -1
    @back = -1
  end

  # Adds the value to the back of the queue.
  def enqueue(value)
    if @front == -1
      @front = 0
      @back = 1
      @store[@front] = value
    elsif @store.empty?
      raise ArgumentError, "Queue is full"
    else
      @store[@back] = value
      @back = (@back + 1) % @size
    end
  end

  # removes and returns a value from the front of the queue
  def dequeue
    if @front == -1
      raise ArgumentError, "Queue is empty"
    else
      data = @store[@front]
      @front = (@front + 1) % @size
      if @store.empty?
        @front = back = -1
      end
      return data
    end
  end

  # def front
  #   raise NotImplementedError, "Not yet implemented"
  # end

  # def size
  #   raise NotImplementedError, "Not yet implemented"
  # end

  # returns true if the queue is empty and false otherwise
  def empty?
    return @front == @back
  end

  def to_s
    return @store.to_s
  end
end
