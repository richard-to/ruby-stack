require_relative '../stack'

describe Stack do
  it "can be created" do
    stack = Stack.new
  end

  it "can check if it is empty" do
    stack = Stack.new
    expect(stack.empty?).to be_truthy
  end

  it "can push an element" do
    stack = Stack.new
    stack.push 1
    expect(stack.empty).to be_falsey
  end
end