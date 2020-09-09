class Queue

  def initialize
    @list = []
    @max_list = 20
    @front = -1
    @back = -1
  end

  def enqueue(element)
    if @front == -1
      @front = 0
      @list[@front] = element
      @back = 1
    elsif @front == @back
      raise ArgumentError, "Queue is full"
    else
      @list[@back] = element
      @back = (@back + 1) % @max_list
    end
  end

  def dequeue
    if @front == -1
      raise ArgumentError, "Queue is empty"
    else
      elem = @list[@front]
      @list[@front] = nil
      
      if @front == @back
        @front = -1
        @back = -1
      else
        @front = (@front + 1) % @max_list
      end

      return elem
    end
  end

  def front
    front_elem = self.dequeue
    temp_array = [front_elem]

    until @list.empty?
      temp = @list.dequeue
      temp_array.push(temp)
    end

    index = 0
    until index == temp_array.length
      @list.enqueue(temp_array[index])
      index += 1
    end

    return front_elem
  end

  def size
    return @list.length
  end

  def empty?
    return @front == @back
  end

  def to_s
    print_list = []
    current = @front
    
    until current == @back
      print_list.push(@list[current])
      current = (current + 1) % @max_list
    end

    return print_list.to_s
  end
end
