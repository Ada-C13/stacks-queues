class Queue

  def initialize(size = 22)
    @size = size
    @store = Array.new(size)
    @head = @back = 0
  end

  def enqueue(element)
    return NotImplementedError if (@back == @head && !empty?) 
    @store[@back] = element
    @back = (@back + 1) % @size
  end

  def dequeue
    if !@head
      return !@head
    end
 
    value = @store[@head]
    @store[@head] = nil 
    @head = (@head + 1) % @size
    return value
  end

  def front
    raise NotImplementedError, "Not implemented yet"
  end

  def size
    raise NotImplementedError, "Not implemented yet"
  end

  def empty?
    if @store[@head]
      return false
    else 
      return true
    end
  end

  def to_s
    return @store.select{|value| value}.to_s
  end
end
