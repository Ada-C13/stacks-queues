class Stack
  def initialize
    @store = LinkedList.new
  end

  def push(element)
    @store.add_last(element)
  end

  def pop
    return nil if @store.empty?
    item = @store.remove_last
    return item
  end

  def empty?
    @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
