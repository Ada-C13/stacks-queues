class Queue

  def initialize
    @queue = Array.new
    @size = 20
    @head = -1
    @rear = -1
  end

  def enqueue(element)
    if (@head == -1)
      @head = 0
      @rear = 0
      @queue[@rear] = element
    elsif ((@rear + 1) % @size == @head)
      raise ArgumentError.new('full')
    else
      @rear = (@rear + 1) % @size
      @queue[@rear] = element
    end
  end

  def dequeue
    if (@head == -1)
      raise ArgumentError.new('empty')
    elsif @head == @rear
      temp = @queue[@head]
      @head = -1
      @rear = -1

      return temp
    else
      temp = @queue[@head]
      @head = (@head + 1) % @size

      return temp
    end
  end

  def head
    return @queue[@head]
  end

  def size
    return @size
  end

  def empty?
    return (@head == @rear) && (@head == -1)
  end

  def to_s
    if @head <= @rear
      return @queue[@head..@rear].to_s
    else
      return (@queue[@head..20] + @queue[0..@rear]).to_s
    end
  end
end
