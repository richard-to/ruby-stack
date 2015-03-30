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

end