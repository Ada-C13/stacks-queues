class Queue
  attr_accessor :front, :rear, :store
  attr_reader :size

  def initialize(size=20)
    @size = size
    @store = Array.new()
    @front = 0
    @rear = -1
  end

  # add element to rear
  def enqueue(element)
    return @store.push(element)
  end

  # remove element from front
  def dequeue
   return nil if @store.empty?
   return @store.shift()
  end

  def front(queue) 
    return @front == -1
  end

  def size
    return @store.size
  end

  def empty?
    if @front == 0 && @rear == -1
    return @store.empty?
    end
  end

  def to_s
    return @store.to_s
  end
end
