class Queue # FIFO; Elements added to the rear and removed from front
# An Abstract Data Type is a data type with a specific public interface, but unspecified implementation.
  def initialize
    @store = Array.new(20)
    @size = 20
    @front = 0
    @back = 0
    
  end

  def enqueue(element) # add an element to the rear of the queue
    if @front == (@back + 1) % size
      raise ArgumentError, "Queue is full"
    else # move back to next position clockwise
      @store[@back] = element
      @back = (@back + 1) % @size
    end
  end

  def dequeue # Remove & return the element from the front
    if @front == @back
      raise ArgumentError, "Queue is empty"
    else # move front to next position clockwise
      result = @store[@front]
      @front = (@front + 1) % @size
      return result
    end
  end

  def front
    return @store[@front]
  end

  def size
    return @store.size
  end

  def empty?
    return @front == @back
  end

  def to_s
    result = []
    @store.each do |element|
      result << element if element
    end
    return result.to_s
  end

end
