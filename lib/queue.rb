class Queue

  def initialize
    @store = Array.new(100)
    @front = @back = -1
  end

  def enqueue(element)
    (@front = 0 && @back = 1) if @front == -1 && @back == -1
    raise ArgumentError.new("No room in queue")  if !@store[@back].nil? && @front == @back
    
    @store[@back] = element
    @back = (@back+1) % @store.length
  end

  def dequeue
    dequeued = @store[@front]

    @store[@front] = nil
    @front = @front+1
    
    return dequeued 
  end

  def front
    return @store[@front]
  end

  def size
    return @store.compact.size
  end

  def empty?
    return size == 0
  end

  def to_s
    @store.compact!
    return @store.to_s
  end
end
