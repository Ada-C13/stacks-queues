class Stack
  def initialize
      # @store = nil # keep the head private. Not accessible outside this class
      @list = LinkedList.new
  end

  def push(element)
    @list.add_first(element)
  end

  def pop
    return nil if self.empty?

    item = @list.remove_first

    return item
  end

  def empty?
    return @list.empty?
  end

  def to_s
    return @store.to_s
  end
end
