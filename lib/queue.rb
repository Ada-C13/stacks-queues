class Queue

  def initialize
    # @store = ...
    # @list = Array.new(20)
    @store = Array.new
    @front_index = 0
    @back_index = 0
    @max_size = 20
  end

  def enqueue(element)
    # can't enqueue if the queue is full
    if self.size == @max_size
      return nil
    else
      @store[@back_index] = element
      @back_index += 1
    end

    return element
  end

  def dequeue
    return nil if empty?
    @back_index -= 1
    return @store.shift
  end

  def front
    return @store[@front_index]
  end

  def size
    return @store.size
  end

  def empty?
    @store.size == 0 ? true : false
  end

  def to_s
    return @store.to_s
  end
end

q = Queue.new
q.enqueue(10)
q.enqueue(20)
q.enqueue(30)
puts q
q.dequeue
puts q
q.enqueue(90)
# q.dequeue
puts q
q.enqueue(40)
puts q
q.enqueue(50)
puts q
q.enqueue(60)
puts q