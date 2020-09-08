class Queue

  def initialize
    @store = Array.new
    @spots = 20
    @front = -1
    @rear = -1
  end

  def enqueue(element)
    raise ArgumentError, "Full" if @rear == @spots
    # If front and rear are both equal to -1 that means the queue is empty
    if @front == -1 && @rear == -1
      @front = @rear = 0
      @store[@rear] = element
    else
      @rear = @rear + 1
      @store[@rear] = element
    end

    return @store
  end

  def dequeue
    return nil if self.empty?
    # There is just one element in the queue
    element = @store[@front]
    if @front == @rear 
      @front = @rear = -1
    else
      @front = (@front + 1) 
    end

    return element
  end

  def front
    return nil if @front == -1 && @rear == -1

    return @store[@front]
    
  end

  def size
    return @spots
  end

  def empty?
    return @front == -1 && @rear == -1
  end

  def to_s
    return @store[@front..@rear].to_s
  end
end