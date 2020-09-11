class Queue

  def initialize
    @store = []
    @max_size = 20
    @front = -1
    @rear = -1
  end

  def enqueue(element)
    if (@front == 0 && @rear == (@max_size - 1)) || 
        (@rear == ((@front - 1) % (@max_size - 1)))
          raise "No more space"
    elsif @front == -1 # Queue is empty
      # initialize front and rear
      @front += 1
      @rear += 1
    elsif (@rear == (@max_size - 1) && @front != 0) # rear needs to wrap around
      @rear = 0
    else
      @rear += 1
    end
    @store[@rear] = element
  end

  def dequeue
    if @front == -1 
      raise "Nothing to remove"
    elsif @front == @rear
      dequeue = front
      @front = -1
      @rear = -1
    else
      dequeue = front
      @front += 1
    end
    return dequeue
  end

  def front
    return @store[@front] if @front != -1 
  end

  # get how many elements are in the array
  def size
    if @rear >= @front
      return (@rear - @front) + 1
    else
      return (@max_size) - (@front - @rear) + 1
    end
  end

  def empty?
    return @front == -1
  end

  def to_s
    if @front <= @rear
      return @store[@front, @max_size].to_s
    else
      arr = @store[@front, @max_size]
      arr += @store[0.. @rear]
      return arr.to_s
    end
  end
end
