class Queue

  def initialize
    @queue = Array.new
    @front = 0
    @back = 0
  end

  def enqueue(element)
    # puts "Queue before enqueuing: #{@queue}, @back: #{@back}"
    @queue[@back] = element
    @back += 1
    # puts "Queue after enqueuing: #{@queue}, @back: #{@back}"

    # add logic for overflow/wrapping
  end

  def dequeue
    return nil if self.empty?
    # puts "Queue before dequeuing: #{@queue}, @front: #{@front}"

    dequeued = @queue[@front]
    @queue[@front] = nil
    @front += 1
    # puts "Queue after dequeuing: #{@queue}, @front: #{@front}"
    # add logic for overflow/wrapping
    
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
    return false if @queue.nil?

    @queue.each do |item|
      return false if item != nil
    end

    return true
  end

  def to_s
    return @queue.compact.to_s
  end
end
