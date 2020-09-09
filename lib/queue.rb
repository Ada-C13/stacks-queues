class Queue

  def initialize
    @size = 20
    @store = Array.new(@size)
    @front, @rear = -1, -1 
  end

  def enqueue(element) #move back to the next free position 
    if @front == -1 && @rear -1 #first time 
      @front = 0 
      @rear = 1 
      @store[@front] = element 
      return element
    end 

    if @front == (@rear + 1) % @size #check if is full 
     return nil 
    else 
      @store[@rear] = element #when not full add to the back 
      @rear = (@rear + 1) % @size #keeping track of the next free index  
    end 
  end

  def dequeue #move front one position clockwise 
    if @front == -1 && @rear == -1 #first time 
      return nil 
    end 

    #remove first element 
    element = @store[@front]
    @front = (@front + 1) % @size
    #after removing check if queue is empty to set front and back -1 
    if @front == @rear
      @front, @rear = -1, -1 
    end  
    return element
  end

  def front
    return nil if @front == @rear 
    return @store[@front] 
  end

  def size
    return 0 if @front == @rear #empty
    return @rear - @front + 1 if @rear > @front # @back ahead of @front
    return (@size - @front) + (@rear + 1)
  end

  def empty?
    return @front == @rear  
  end

  def to_s
    return '[]' if @front == @rear
    if @rear > @front
      return @store[@front..@rear - 1].to_s
    else 
      return (@store[@front..@size - 1] + @store[0..@rear - 1]).to_s
    end 
  
  end
end