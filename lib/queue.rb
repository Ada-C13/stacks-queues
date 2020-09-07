class Queue

  def initialize
    @store = []
    @front = -1
    @rear = -1
    @size = 20
  end

  def enqueue(element)
    
    if (@front == 0 && @rear == @size - 1) #||
        raise 'An error has occured'
    elsif (@front == -1) # Queue is empty
      @front = 0
      @rear = 0
      @store[@rear] = element
    elsif @rear == 19 && @front != 0 # @rear needs to wrap around
      @rear = 0
      @store[@rear] = element
    else
      @rear = @rear + 1
      @store[@rear] = element
    end
  end


  def dequeue
    data = nil
    if (@front == -1) # Queue is empty
      raise 'An error has occured'
    end
    
    if !(@front == -1)
      data = @store[@front]
    end

    if @front == @rear 
      @front = -1
      @rear = -1
    elsif (@front == (@size - 1)) # if @front needs to wrap around
      @front = 0
    else
      @front = @front + 1
    end
    
    return data
  end



  def front
    return @store[@front]
  end

  def size
    size = 0
   
    until @front == @rear
     size += 1
      if @front == 19
        @front = 0
      else
        @front +=1
      end
    end
    array.push(@store[@rear])
    
    return size
  end

  def empty?
    if @front == -1 ||  @store == [] #(@front == @rear && !@store[@front]) 
      return true
    else
      return false
    end
  end

  def to_s
    array = []
   
    until @front == @rear
      array.push(@store[@front])
      if @front == 19
        @front = 0
      else
        @front +=1
      end
    end
    array.push(@store[@rear])
    
    return "#{array}"
  end
end
