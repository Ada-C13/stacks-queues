class Queue

  def initialize
    @store = Array.new(20)
    @size = 20
    @front = -1
    @rear = -1
  end

  def enqueue(element)
    if (@front == 0 && @rear == @size - 1) ||
      (@rear == (@front - 1) % (@size - 1))
      raise RuntimeError.new("Error: Queue is full")
    elsif @front == -1 # queue is empty
      @front = @rear = 0
      @store[@rear] = element
    elsif @rear == @size - 1 && @front != 0 # rear needs to wrap around
      @rear = 0
      @store[@rear] = element
    else 
      @rear += 1
      @store[@rear] = element
    end
  end

  def dequeue
    if @front == -1
      raise RuntimeError.new("Error: The queue is empty")
    end
  
    data = @store[@front]
    @store[@front] = nil # overwrite the element being deleted
  
    if @front == @rear # queue is now empty
      @front = -1
      @rear = -1
    elsif @front == @size - 1 # front needs to wrap around
      @front = 0
    else
      @front += 1
    end
  
    return data
  end

  def empty?
    return @front == @rear
  end

  def to_s
    return @store.to_s
  end
end
