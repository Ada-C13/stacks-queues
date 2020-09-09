class Queue
# set queue_size here to something like 20 or whatever
queue_size = 20

  def initialize
    # @store = ...
    # raise NotImplementedError, "Not yet implemented"
    # create a new array
    @store = Array.new(queue_size)
    #set the front and rear to position -1 bc it's empty still
    @front = -1
    @rear = -1
  end

  #example: i want to add myself to a line of 20 people for coffee
  def enqueue(element)
    # raise NotImplementedError, "Not yet implemented"
    #check if front is empty
    if @front == -1
      #then rear is 1 and front is now 0
      @rear = 1
      @front = 0
      #access the element in the store array
      @store[@front] = element
    #otherwise if front IS the rear, then the queue is full
    elsif @front == @rear 
      raise Error,"Tis Full"
    #not empty
    #calculate new rear then set it as the element
    #set original rear to new rear
    else
      new_rear = (@rear + 1) % queue_size
      @store[@rear] = element
      @rear = new_rear
    end
  end

  #example: wth, this coffee line too long, i want to remove myself from this
  def dequeue
    # raise NotImplementedError, "Not yet implemented"
    #check if front is empty, if yes, return nil
    if @front == -1
      return nil
    #otherwise if front IS the rear, then the queue is full
    elsif @front == @rear
      raise Error, "Full up here"
    #not empty
    else 
      #do same thing as the enqueue
      new_front = (@front + 1) % queue_size
      temp = @store[@front]
      @store[@front] = nil
      @front = new_front
    end
    return temp
  end

  #the front is the front, so return the front
  def front
    # raise NotImplementedError, "Not yet implemented"
    return @front
  end

  def size
    # raise NotImplementedError, "Not yet implemented"
    #start at 0
    count = 0
    #loop through each element in the array
    @store.each do |element|
      #check if it's not empty, then increment the count
      if !element.nil?
        count += 1
      end
      return count
  end

  #if the size is less than 0, then pretty sure it's empty
  #check if it's bigger than 0 first, if it is, then it's NOT empty == false
  def empty?
    # raise NotImplementedError, "Not yet implemented"
    if size > 0
      return false
    end
    return true
  end

  #return values as a string
  def to_s
    #create an array to hold the values
    array_values = []
    #loop through array
    @store.each do |element|
      #check if it's not empty, then add element to the array that was created
      if !element.nil?
        array_values.append(element)
      end
    end
    #return the array and make sure to do to_s to ensure string in case it mutated somewhere
    return array_values.to_s
  end
end
