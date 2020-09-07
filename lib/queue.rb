class Queue
  def initialize
    @store = Array.new(size = 20)
    @size = size
    @front = -1
    @rear = -1
  end

  def enqueue(element)
    if @front == -1
      @front = 0
      @rear = 0
      @store[@rear] = element
    elsif (@front == 0 && @rear == size - 1)
      raise StandardError.new("The queue is full")
    elsif (@rear == @front - 1)
      raise StandardError.new("The queue is full")
    else
      @rear = (@rear + 1) % size
      @store[@rear] = element

    # Covers 2 scenarios:
    # elsif (@front > 0 && @rear == size - 1)
    #   @rear = 0
    #   @store[@rear] = element
    # else
    #   @rear += 1
    #   @store[@rear] = element
    end
  end

  def dequeue
    if @front == -1
      raise StandardError.new("The queue is empty")
    end

    removed = @store[@front]
    @store[@front] = nil

    if @front == @rear
      @front = -1
      @rear = -1
    else
      @front = (@front + 1) % size

    # Covers 2 scenarios:  
    # elsif @front == size - 1
    #   @front = 0
    # else
    #   @front += 1
    end

    return removed
  end

  def front
    return @store[@front]
  end

  def size
    @size
  end

  def empty?
    return @front == -1 && @rear == -1 ? true : false
  end

  def to_s
    result = []
    i = @front
    while i < size && @store[i] != nil
      result << @store[i]
      i += 1
    end

    if @rear < @front
      i = @rear
      while i < @front && @store[i] != nil
        result << @store[i]
        i += 1
      end
    end

    return result.to_s
  end
end
