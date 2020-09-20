class Queue
  
  def initialize
    @store = Array.new(20)
    @size = 20
    @front = -1
    @back = -1
  end
  
  # add element to rear
  def enqueue(value)
    if @front == -1
      @front = 0
      @back = 1
      @store[@front] = value
    elsif @store.empty?
      raise ArgumentError, "Full"
    else
      @store[@back] = value
      @back = (@back + 1) % @size
    end
  end

  # remove element from front and return it
  def dequeue
    if @front == -1
      raise ArgumentError, "Empty"
    else
      data = @store[@front]
      @front = (@front + 1) % @size
      if @store.empty?
        @front = back = -1
      end
      return data
    end
  end
  
  def empty?
    return @front == @back
  end

  def to_s
    list = []
    current = @front
    
    while current != @back
      list << @store[current]
      current = (current + 1) % @size
    end
    return list.to_s
  end
end

# class Queue
# passes all tests but not made with a circular buffer. 
#   attr_accessor :front, :rear, :store
#   attr_reader :size

#   def initialize(size=20)
#     @size = size
#     @store = Array.new()
#     @front = 0
#     @rear = -1
#   end

#   # add element to rear
#   def enqueue(element)
#     return @store.push(element)
#   end

#   # remove element from front
#   def dequeue
#    return nil if @store.empty?
#    return @store.shift()
#   end

#   def front(queue) 
#     return @front == -1
#   end

#   def size
#     return @store.size
#   end

#   def empty?
#     if @front == 0 && @rear == -1
#     return @store.empty?
#     end
#   end

#   def to_s
#     return @store.to_s
#   end
# end
