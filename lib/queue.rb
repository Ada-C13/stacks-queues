class Queue

  def initialize
    @store = Array.new
    @front = 0
  end

  def enqueue(element)
    @store.push(element)
  end

  def dequeue
    @store.pop
  end

  def front(queue) 
    first = queue.dequeue
    temp_arr = [first]
    until queue.empty?
      temp = queue.dequeue
      temp_arr.push(temp)
    end

    index = 0
    until index == temp_arr.length
      queue.enqueue(temp_arr[index])
      index += 1
    end
    return first
  end

  def size
    # @store.size
  end

  def empty?
    @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
