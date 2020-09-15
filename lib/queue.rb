class Queue
  # attr_reader :front, :size

  def initialize
    @store = Array.new
    @size = 20
    @front = 0
    @back = 0
  end

  def enqueue(element)
    if @front == (@back + 1) % @size
      raise Error.new("Queue is full")
    else
      @store[@back] = element
      @back = (@back + 1) % @size
    end
  end

  def dequeue
    return nil if self.empty?

    element = @store[@first]
    # @store[@first] = nil
    @front = (@front + 1) % size
    @last = (@last - 1) % @size
    return element
  end


  #can be reduced to attr_reader??? maybe
  def front
    return @front
  end

  def size
    return @size
  end

  def empty?
    return @front == @back
  end

  def to_s
    return @store.to_s
  end
end
