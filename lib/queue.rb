class Queue
  # attr_reader :first, :size

  def initialize
    @store = Array.new
    @size = 20
    @first = 0
    @last = 0
  end

  def enqueue(element)
    if @first == (@last + 1) % @size
      raise Error.new("Queue is full")
    else
      @store[@last] = element
      @last = (@last + 1) % @size
    end
  end

  def dequeue
    return nil if self.empty?

    element = @store[@first]
    # @store[@first] = nil
    @first = (@first + 1) % size

    return element
  end


  #can be reduced to attr_reader??? maybe
  def first
    @store[@first]
  end

  def size
    return @size
  end

  def empty?
    return @first == @last
  end

  def to_s
    return @store.to_s
  end
end
