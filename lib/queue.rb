class Queue

  def initialize
    @max = 20
    @store = Array.new(@max)
    @front = 0
    @back = 0
  end

  def enqueue(element)
    return nil if @front == (@back + 1) % @max # checking if queue is full
    current = @back # save @back position before we change it
    @store[current] = element
    @back = (@back + 1) % @max # handles case where back hits the end
    return element
  end

  def dequeue
    return nil if @front == @back # checking if queue is empty
    current = @front # save @front position before we change it
    @front = (@front + 1) % @max # handles case where front hits the end
    return @store[current]
  end

  def front # peek
    return nil if @front == @back # checking if queue is empty
    return @store[@front]
  end

  def size
    return 0 if @front == @back # checking if queue is empty
    return @back - @front + 1 if @back > @front # @back ahead of @front
    return (@max - @front) + (@back + 1) # @front ahead of @back
  end

  def empty?
    return @front == @back
  end

  def to_s
    return [].to_s if @front == @back # checking if queue is empty
    return @store[@front..@back - 1].to_s if @back > @front # @back ahead of @front
    return (@store[@front..@max - 1] + @store[0..@back - 1]).to_s # @front ahead of @back
  end
end # what if @back zero?
