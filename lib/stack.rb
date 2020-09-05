class Stack
  def initialize
    # @store = ...
    @list = LinkedList.new #@head & #tail
    #node => @data, @next, @previous
  end

  def push(element)
    return @list.add_first(element)
  end

  def pop
    return nil if self.empty?
    return @list.remove_first()
  end

  def empty?
    return @list.empty?
  end

  def to_s
    return @store.to_s
  end
end
