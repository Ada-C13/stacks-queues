class Queue

  def initialize
    @queue = Array.new(20)
    @capacity = @queue.count
    @front = 0
    @back = 0
  end

  def full
    @front == @back && self.size == @capacity
  end

  def enqueue(element)
    raise QueueFullError if self.full
    @queue[@back] = element
    @back = (@back + 1) % @queue.length
  end

  def dequeue
    return nil if self.empty?
    dequeued = @queue[@front]
    @queue[@front] = nil
    @front = (@front + 1) % @queue.length
    return dequeued
  end

  def front
    return nil if @queue.empty?
    return @queue[@front]
  end

  def size
    return 0 if @queue.nil?

    count = 0
    @queue.each do |item|
      count += 1 if item != nil
    end

    return count
  end

  def empty?
    @front == @back && self.size == 0
  end

  def order
    return @queue if @front < @back

    ordered_queue = []
    ordered_queue << @queue[@front..@capacity] 
    ordered_queue << @queue[0..@back] 
    return ordered_queue.flatten
  end

  def to_s
    return self.order.compact.to_s
  end
end
