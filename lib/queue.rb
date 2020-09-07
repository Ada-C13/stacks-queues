class Queue

  def initialize
    @store = Array.new
    @front = 0 
    @back = 0 
  end

  def enqueue(element)
    if @front == (@back + 1 ) % 20 
    else  
      @store.push(element)
      @back += 1
    end 
  end

  def dequeue
    if @front == @back
      return nil 
    else 
      @front += 1 
      @store.delete_at(0)
    end 
  end

  def front

  end

  def size
    return @store.length
  end

  def empty?
    return @store.length == 0 
  end

  def to_s
    return @store.to_s
  end
end
