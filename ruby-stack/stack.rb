class Stack
  def initialize
    @stack = []
  end

  def empty?
    return @stack.empty?
  end

  def push(element)
    @stack.push element
  end

  def pop
    return @stack.pop
  end
end