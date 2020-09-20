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
    def initialize(size = 30)
      @store = Array.new
      @size = size
      @front = 0
      @back = 0
    end

    def enqueue(element)
      if @front == (@back + 1) % @size
        raise StandardError, 'Queue is full.'
      else
        @store[@back] = element
        @back = (@back + 1) % @size
      end
    end

    def empty?
      @front == @back
    end

    def dequeue
      return nil if self.empty?

      element = @store[@front]
      @front = (@front + 1) % @size
      return element
    end


    def to_s
      return [] if self.empty?

      queue = []
      current = @front

      while current != @back
        queue << @store[current]
        current = (current + 1) % @size
      end

      queue.to_s
    end
end