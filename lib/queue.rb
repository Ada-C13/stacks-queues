require './linked_list'

class Queue

  def initialize
    @queue = Array.new(20)
    @cap = @queue.count
    @front = 0 #index
    @back = 0 #index
  end

  def size
    count = 0
    @queue.each do |e|
      if e != nil
        count +=1
      end 
    end 
    return count 
  end

  def is_full? 
    @front == @back && @cap == self.size
  end 

  def enqueue(element)
    return nil if self.is_full?
    @queue[@back] = element
    @back = (@back + 1) % @queue.length #20
  end

  def dequeue
    return nil if self.empty?
    dequeued = @queue[@front]
    @queue[@front] = nil
    @front = (@front + 1) % @queue.length
    return dequeued
  end

  def front
    return nil if @queue.empty?
    return @queue[@front]
  end

  def empty?
    @front == @back && self.size == 0
  end

  def to_s
 
    arr = @queue.select{ |e| e.nil? == false }
   # arr.each do 
    return arr.sort.to_s
  end
end
