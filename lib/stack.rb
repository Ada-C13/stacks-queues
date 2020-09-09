class Stack

  def initialize
    @store = LinkedList.new
  end

  def push(element)
    if @store.nil?
      @store.add_first(element)
    else
      @store.add_last(element)
    end
  end

  def pop
    @store.remove_last() unless @store.empty?
  end

  def empty?
    return @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
