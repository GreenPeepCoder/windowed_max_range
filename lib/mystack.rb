class MyStack
  def initialize
    @store = []
  end

  def peek
    @store.first
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

  def pop
    @store.shift
  end

  def push(element)
    @store.unshift(element)
  end
end
