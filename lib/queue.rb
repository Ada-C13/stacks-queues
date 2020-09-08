class Queue

  def initialize
    @store = Array.new
    @size = 20
    @start = 0
    @end = 0 
  end

  def enqueue(element)
    # check if we can add more elements
    raise Exception.new "No vacant spots in queue" if @size < self.size

    @store[@end] = element
    @end = (@end + 1) % @size
  end

  def dequeue
    raise Exception.new "No elements in queue" if self.size == 0
    element = @store[@start]
    @store[@start] = nil
    @start = (@start + 1) % @size
    return element
  end

  def front
    raise Exception.new "No elements in queue" if self.size == 0
    @store[@start]
  end

  def size
    if @end == @start && @store[@start]
      return 20
    elsif @end > @start
      return @end - @start
    elsif @end < @start
      return @end + @size - @start
    else
      return 0
    end
  end

  def empty?
    @end == @start
  end

  def to_s
    if @end > @start
      return @store[@start..@end].to_s
    else
      return (@store[@start..@size-1] + @store[0..@end-1]).to_s
    end
  end
end
