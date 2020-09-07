class Stack
  def initialize
    @store = LinkedList.new
    # raise NotImplementedError, "Not yet implemented"
  end

  def push(element)
    # raise NotImplementedError, "Not yet implemented"
    @store.add_first(element)
  end

  def pop()
    # raise NotImplementedError, "Not yet implemented"

    return nil if self.empty? 

    element = @store.remove_first

    return element
  end

  def empty?()
    # raise NotImplementedError, "Not yet implemented"
    return @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
