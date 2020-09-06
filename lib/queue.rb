class Queue

  def initialize
    @store = Array.new
    @head = 0
    @length = 0
  end

  def enqueue(element)
    @store << element
    @length += 1
  end

  def dequeue
    removed = @store[@head]
    @store.delete_at(@head)
    @length -= 1
    return removed 
  end

  def front
    return @head
  end

  def size
    return @length
  end

  def empty?
    @length == 0
  end

  def to_s
    return @store.to_s
  end
end
