class Queue

  def initialize
    @store = Array.new(20)
    @head = 0
    @tail = 0
  end

  def enqueue(element)
    if @tail == @head && !@store[@head].nil?
    raise "Buffer is full"
    end
    @store[@tail] = element
    @tail = (@tail + 1) %20
  end

  def dequeue
    if @store[@head].nil?
      raise "Buffer is empty"
    end
    result = @store[@head]
    @store[@head] = nil
    @head = (@head +1) %20
    return result
  end

  def front
    @store[@head]
  end

  def size
    @store.length
  end

  def empty?
    @store[@head].nil?
  end

  def to_s
    return @store.rotate(@head).filter{|element| !element.nil?}.to_s
  end
end
