class Stack
  def initialize
    @list = LinkedList.new
  end

  def push(element)
    @list.add_first(element)
  end

  def pop
    # return nil if @list.empty?
    @list.remove_first
  end

  def empty?
    return @list.empty?
  end

  def to_s
    return @store.to_s
  end
end
