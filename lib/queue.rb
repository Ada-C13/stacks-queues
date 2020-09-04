class Queue
  class QueueFullError < StandardError; end

  def initialize # could initialize with capacity for variable size
    @queue = Array.new(20)
    @capacity = @queue.count
    @front = 0
    @back = 0
  end

  def enqueue(element)
    # puts "Queue before enqueuing: #{@queue}, @front: #{@front}, @back: #{@back}"
    raise QueueFullError if self.full?

    @queue[@back] = element
    @back = (@back + 1) % @queue.length
    # puts "Queue after enqueuing: #{@queue}, @front: #{@front}, @back: #{@back}"
  end

  def dequeue
    return nil if self.empty?
    # puts "Queue before dequeuing: #{@queue}, @front: #{@front}, @back: #{@back}"

    dequeued = @queue[@front]
    @queue[@front] = nil
    @front = (@front + 1) % @queue.length
    # puts "Queue after dequeuing: #{@queue}, @front: #{@front}, @back: #{@back}"
    
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

  def full?
    @front == @back && self.size == @capacity
  end

  def empty?
    @front == @back && self.size == 0
  end

  def order_front_to_back
    # front is before back
    return @queue if @front < @back

    # back is before front 
    ordered_queue = []
    ordered_queue << @queue[@front..@capacity] # put in @front until end of array
    ordered_queue << @queue[0..@back] # 0 loc of array to @back
    return ordered_queue.flatten
  end

  def to_s
    return self.order_front_to_back.compact.to_s
  end
end
