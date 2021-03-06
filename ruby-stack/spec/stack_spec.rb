require_relative '../stack'

describe Stack do
  it "can be created" do
    stack = Stack.new
  end

  describe 'empty?' do
    it "can check if stack is empty" do
      stack = Stack.new
      expect(stack.empty?).to be_truthy
    end
  end

  describe "clear!" do
    it "can remove all elements" do
      stack = Stack.new
      stack.push 1
      stack.push 2
      stack.clear!
      expect(stack.empty?).to be_truthy
    end
  end

  describe 'push' do
    it "can push an element" do
      stack = Stack.new
      stack.push 1
      expect(stack.empty?).to be_falsey
    end
  end

  describe 'pop' do
    context 'when not empty' do
      it "can pop the top element" do
        stack = Stack.new
        stack.push 1
        stack.push 2
        expect(stack.pop).to be 2
      end
    end

    context 'when empty' do
      it "will throw a StackUnderflowError" do
        stack = Stack.new
        expect { stack.pop }.to raise_error StackUnderflowError
      end
    end
  end

end