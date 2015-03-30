class StackUnderflowError < StandardError
end

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
    element = @stack.pop
    if element == nil
      raise StackUnderflowError
    end
    return element
  end
end