class Queue

  def initialize
    @store = Array.new(20)
    @front = -1
    @rear = -1
    @size = 20
  end

  def enqueue(element)
    if ((@front == 0 && @rear == @size - 1) || (@rear == (( @front - 1) % ( @size - 1))))
      raise ArgumentError.new("Queue is full")
    elsif (@front == - 1) # Queue is empty
      @front = 0
      @rear = 0
      @store[@rear] = element
    elsif ((@rear == @size - 1) && (@front != 0)) # rear needs to wrap around
      @rear = 0
      @store[@rear] = element
    else
      @rear = @rear + 1
      @store[@rear] = element
    end
  end

  def dequeue
    if (@front == - 1)
      raise ArgumentError.new("Queue is empty")
    end

    data = @store[@front] # element to be dequeued
    @store[@front] = nil # dequeue element
    
    if (@front == @rear) # if the queue is now empty
      @front = -1
      @rear = -1
    elsif (@front == @size - 1 ) # if front needs to wrap around
      @front = 0
    else
      @front += 1
    end

    return data
  end

  def front
    return @store[@front]
  end

  def size
    if @rear < @front
      count = @size - @front + @rear + 1
    else 
      count = @rear - @front + 1
    end
    return count
  end

  def empty?
    return ((@front == - 1) && (@rear == - 1))
  end

  def to_s
    if @front == -1 && @rear == -1
      return '[]'
    elsif @front <= @rear
      return @store[@front..@rear].to_s
    else
      i = 0
      index = @front
      size = @size - @front + @rear + 1
      result = []
      while i < size
        result << @store[index]
        if index < @size - 1
          index += 1
        else
          index = 0
        end
        i += 1
      end
      return result.to_s
    end
  end
end
