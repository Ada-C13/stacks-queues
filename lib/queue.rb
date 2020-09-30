class Queue

  def initialize
    @store = Array.new(20)
    @max_size = 20
    @front = -1
    @rear = -1
  end

  def enqueue(element)
    if @front == -1
      @front = 0
      @rear = 1
      @store[@front] = element

    elsif @front == @rear
      raise ArgumentError, "Queue is at max capacity"
    
    else
      @store[@rear] = element
      @rear = (@rear + 1) % @max_size
    end
  end

  def dequeue
    if @front == -1
      raise ArgumentError, "Queue is empty"
    else  
      element = @store[@front]
      @front = (@front + 1) % @max_size

      if @front == @rear 
        @front = @rear = -1 
      end

      return element
    end
  end

  def front
    return @store[@front]
  end

  def empty?
    return @front == @rear
  end

  def to_s
    queue = []
    current = @front
    while current != @rear
      queue << @store[current]
      current = (current + 1) % @max_size
    end
    return queue.to_s
  end
end
