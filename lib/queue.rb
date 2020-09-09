class Queue

  attr_accessor :ring, :front, :back, :size

  def initialize(size=20)
    @size = size
    @ring = Array.new(size)
    @front = 0
    @back = 0
  end

  def enqueue(element)
    # if circular buffer is full, return empty array
    return [] if (@back + 1) % @size == @front

    # otherwise, add element to the back
    @ring[@back] = element

    # change @back to next free position, clockwise
    @back = (@back + 1) % @size
  end

  def dequeue
    return [] if @ring.empty?

    dequeued_element = @ring[@front]
    # dequeue by reassigning the front to the next position, clockwise
    @front = (@front + 1) % @size

    return dequeued_element
  end

  def front
    @front
  end

  def size
    @size
  end

  def empty?
    @back == @front
  end

  def to_s
    return [] if @ring.empty?

    ring_output = []
    current_element = @front

    while current_element != @back
      # only get elements that are not nil
      ring_output << @ring[current_element]

      # shift to next element clockwise
      current_element = (current_element + 1) % @size
    end

    return ring_output.to_s
  end
end
