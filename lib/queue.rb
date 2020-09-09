class Queue

  def initialize
    @store = Array.new(20)
    @front = -1
    @back = -1
    @size = 20
    # @empty = true
    # @front = @back = 0
  end

  def enqueue(element)
    if ((@front == 0 && @back == @size - 1) || (@back == (( @front - 1) % ( @size - 1))))
      raise ArgumentError
    elsif (@front == - 1)
      @front = 0
      @back = 0
      @store[@back] = element
    elsif ((@back == @size - 1) && (@front != 0))
      @back = 0
      @store[@back] = element
    else
      @back = @back + 1
      @store[@back] = element
    end

    # if @front == @back && !@empty
    #   raise ArgumentError
    # else
    #   @store[@back] = element
    #   @empty = false
    #   @back = (@back + 1) % @store.length
    # end
  end

  def dequeue
    if (@front == - 1)
      raise ArgumentError
    end

    new_queue = @store[@front]
    @store[@front] = nil
    
    if (@front == @back)
      @front = -1
      @back = -1
    elsif (@front == @size - 1 )
      @front = 0
    else
      @front += 1
    end

    return new_queue

  #  value = @store[@front]
  #  @store[@front] = nil
  #  @front = (@front + 1) % @store.length

  #  if @front == @back
  #   @empty = true
  #  end

  #  return value
  end

  def front
    return @store[@front]
  end

  def size
    if @back < @front
      count = @size - @front + @back + 1
    else 
      count = @back - @front + 1
    end
    return count

    # if @front < @back
    #   return @back - @front
    # else
    #   return @back + @store.length - @front
    # end
  end

  def empty?
    return ((@front == - 1) && (@back == - 1))
   
    # return @empty
  end

  def to_s

    if @front == -1 && @back == -1
      return '[]'
    elsif @front <= @back
      return @store[@front..@back].to_s
    else
      i = 0
      index = @front
      size = @size - @front + @back + 1
      result = []

      while i < size
        result << @store[index]
        if index < @size - 1
          index += 1
        else
          index = 0
        end
        i += 1
      end

      return result.to_s
    end
  end
    # return @store.to_s
end
