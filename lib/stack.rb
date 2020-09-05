class Stack
  def initialize
    @list = LinkedList.new
  end

  def push(element)
    @list.add_first(element)
  end

  def pop
    return nil if @list.empty?

    item = @list.remove_first
    return item
  end

  def empty?
    return @list.empty?
  end

  def to_s
    return @list.to_s
  end
end
