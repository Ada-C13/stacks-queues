class Queue
  attr_accessor :front, :rear, :store
  attr_reader :size

  def initialize(size = 20)
    @size = size
    @store = Array.new(@size)
    @front = -1
    @rear = -1
  end

  def enqueue(element)
    if @front == -1 && @rear == -1 # begining
      @front = 0
      @rear = 1
      @store[@front] = element
      return element
    elsif @front == (@rear + 1) % @size # queue full
          puts("the qeue is full yo")
          raise NotImplementedError
    else
      @store[@rear] = element
      @rear = (@rear + 1) % @size
    end
  end

  def dequeue
    qeue_front = self.front
    if @front != @rear
      @store[@front] = nil
      @front += 1
    end
    return qeue_front
  end

  def front
   return @store[@front]
  end

  def size
    count = 0
    @store.each do |item|
      count += 1 if !item.nil?
    end
    return count
  end

  def empty?
    @store.each do |item|
      return false if !item.nil?
    end
    return true
  end

  def to_s
    new_array_no_nils = []
    @store[@front..].each do |item|
      if !item.nil?
        new_array_no_nils.push(item)
      end
    end
    if @rear < @front
      @store[0..@rear].each do |item|
        if !item.nil?
          new_array_no_nils.push(item)
        end
      end
    end
    return new_array_no_nils.to_s
  end
end
