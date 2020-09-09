class Queue

  def initialize
    @store = []
    @first = 0
    @last = 0
  end

  def enqueue(element)
    @store[@last] = element
    @last = (@last + 1) % 20
  end

  def dequeue
    value = @store[@first]
    @store.delete_at(@first)
    @last = (@last - 1) % 20
    return value
  end

  def front
    return @store[@first]
  end

  def size
    @store.size
  end

  def empty?
    @first == @last
  end

  def to_s
    return @store.to_s
  end
end
