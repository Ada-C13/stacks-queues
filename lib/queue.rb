# class Queue

#   def initialize
#     @store = LinkedList.new
#   end

#   def enqueue(element)
#     @store.add_last(element)
#   end

#   def dequeue
#     return nil if self.empty? 

#     return @store.remove_first
#   end

#   def front
#     return @store.get_first
#   end

#   def size
#    return @store.length
#   end

#   def empty?()
#     return @store.empty?
#   end

#   def to_s
#     return @store.to_s
#   end
# end


class Queue
  def initialize
    @store = LinkedList.new
    @size = 10
    count = 0
    # create 10 nodes & initialize the value with 0
    while count < @size 
      @store.add_first(0)
    end
    @store.create_cycle() #  make the last node link to first node to make circular buffer

    @front = 0
    @back = 0
  end

  def enqueue(element)
    if @front == (@back + 1) % @size # incases where queue is full
      raise StandardError, 'Queue is full.'
    else
      @store.get_at_index(back) = element
      @back = (@back + 1) % @size
    end
  end

  def dequeue
    return nil if empty?

    # FIFO
    item = @store[@front]
    @front = (@front + 1) % @size
    item
  end

  attr_reader :front

  attr_reader :size

  def empty?
    @front == @back
  end

  def to_s
    return [] if @front == @back

    queue = []
    current = @front

    while current != @back
      queue << @store[current]
      current = (current + 1) % @size
    end

    queue.to_s
  end
end
