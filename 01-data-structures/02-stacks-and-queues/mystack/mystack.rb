class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    @stack << item
    self.top = item
  end

  def pop
    raise "stack is empty" if empty?
    item = self.top
    @stack.slice!(@stack.length -1)
    self.top = @stack.last
    item
  end

  def empty?
    @stack.length == 0
  end
end