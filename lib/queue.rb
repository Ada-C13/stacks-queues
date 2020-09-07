class Queue

  def initialize
    @size = 20
    @queue = []
    @front = @rear = -1
  end

  # reference: https://learn-2.galvanize.com/cohorts/2173/blocks/867/content_files/04-Stacks-And-Queues/01-stacks-and-queues.md
  def enqueue(element)
    # The Queue is full
    if ((front == 0 && rear == @size - 1) || (@rear == (@front - 1) % (@size - 1)))    
      raise ArgumentError.new('The queue is full')
    # Queue is empty
    elsif (@front == -1) 
      @front = 0
      @rear = 0
      @queue[@rear] = element
    # rear needs to wrap around
    elsif (@rear == @size - 1 && @front != 0) 
      @rear = 0
      @queue[@rear] = element
    else
      @rear = @rear + 1
      @queue[@rear] = element
    end
  end

  # reference: https://learn-2.galvanize.com/cohorts/2173/blocks/867/content_files/04-Stacks-And-Queues/01-stacks-and-queues.md
  def dequeue
    # Queue is empty
    if (@front == -1) 
      raise ArgumentError.new("The queue is empty")
    end
  
    data = @queue[@front]
    # overwrite the element being deleted
    @queue[@front] = nil
  
    # if the queue is now empty
    if (@front == @rear)
      @front = -1
      @rear = -1
    # if front needs to wrap around
    elsif (@front == @size - 1) 
      @front = 0
    else
      @front = (@front + 1) % @size
    end
  
    return data
  end

  def front
    return @queue[@front]
  end

  def size
    size = @front > @rear ? (@size - @front + @rear + 1) : (@rear - @front + 1)
    return size
  end

  def empty?
    return @front == @rear && @front == -1
  end

  def to_s
    if @front <= @rear 
      return @queue[@front..@rear].to_s
    else  
      return (@queue[@front..-1] + @queue[0..@rear]).to_s
    end 
  end
end
