class Queue
  def initialize
    @store = Array.new
    @size = 20
    @first = 0
    @last = 0
  end

  def enqueue(element)
    return nil if @first == (@last + 1) % @size

    @store[@last] = element
    @last = (@last + 1) % @size
  end

  def dequeue
    return nil if self.empty?

    element = @store[@first]
    @first = (@first + 1) % size

    return element
  end

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
    return nil if self.empty?

    string_queue = Array.new
    current_element = @first

    while current_element < @last
      string_queue << @store[current_element]
      current_element = (current_element + 1) % @size
    end

    return string_queue.to_s
  end
end
