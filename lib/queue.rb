class Queue

  def initialize
    @queue = Array.new
    @size = 20
    @front = -1
    @back = -1
  end

  def enqueue(element)
    if @front == -1
      @front = 0
      @queue[@front] = element
      @back = 1
    elsif @front == @back
      raise ArgumentError, "The queue is full; cannot enqueue at this time."
    else
      @queue[@back] = element
      @back = (1 + @back) % @size 
    end
  end

  def dequeue
    if @front == -1
      raise ArgumentError, "The queue is empty."
    elsif @front == @back
      interim = @queue[@front]
      @front = -1
      @back = -1

      return interim 
    else
      interim = @queue[@front]
      @front = (1 + @front) % @size

      return interim
    end 
  end

  def front
    return @queue[@front]
  end
  
  @private
  def get_queue_contents()
    if @queue.empty?
      return []
    elsif @front > @back
      return @queue[@front...@size] + @queue[0...@back]
    else
      return @queue[@front...@back]
    end
  end

  def size
    self.get_queue_contents.length
  end

  def empty?
    return self.get_queue_contents.empty?
  end

  def to_s
    return self.get_queue_contents.to_s
  end

end
