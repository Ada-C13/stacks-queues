# frozen_string_literal: true

class Queue
  def initialize(size = 30)
    @store = []
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
    @front == @back # front & back are pointing to the same position, then we've read everything
  end

  def dequeue
    return nil if empty?

    element = @store[@front]
    @front = (@front + 1) % @size # advance the front pointer/index by 1
    element
  end

  def to_s
    return [] if empty?

    queue = []
    current = @front

    while current != @back
      queue << @store[current]
      current = (current + 1) % @size
    end

    queue.to_s
  end
end
