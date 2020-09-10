class Stack
  def initialize
    # @store = ...
    # raise NotImplementedError, "Not yet implemented"
    #create a new LinkedList
    @store = LinkedList.new
  end

  def push(element)
    # raise NotImplementedError, "Not yet implemented"
    @store.add_last(element)
  end

  def pop
    #  raise NotImplementedError, "Not yet implemented"
    temp = @store.get_last
    @store.remove_last
    return temp
  end

  def empty?
    # raise NotImplementedError, "Not yet implemented"
    # just check if empty..is this a trick..a little too easy? lol
    return @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
