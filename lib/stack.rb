class Stack
  def initialize
    @store = []
  end

  def push(element)
    @store.push(element)
  end

  def pop
    top = @store.last
    @store.delete_at(-1)
    return top
  end

  def empty?
    @store == [] ? (return true) : (return false)
  end

  def to_s
    return @store.to_s
  end
end
