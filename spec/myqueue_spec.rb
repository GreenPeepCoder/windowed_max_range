require 'rspec'
require 'myqueue'

describe MyQueue do
    describe "#peek" do
        let(:queue){MyQueue.new}

        it 'looks at the first element in the queue without removing it' do
            queue.enqueue(4)
            queue.enqueue(0)
            queue.enqueue(5)
            
            expect(queue.peek).to eq(4)
            expect(queue.size).to eq(3)
        end
    end
    
    describe "#size" do
        let(:queue){MyQueue.new}

        it 'gives the number of elements in the queue' do
            queue.enqueue(4)
            queue.enqueue(0)
            queue.enqueue(5)
            expect(queue.size).to eq(3)
        end
    end

    describe "#empty?" do
        let(:q){MyQueue.new}
        it 'returns true if nothing in the queue' do
            expect(q.empty?).to be(true)
            q.enqueue(11)
            expect(q.empty?).to be(false)
        end
    end

    describe "#enqueue" do
        let(:q) {MyQueue.new}
        it 'adds elements to the back of the queue' do
            q.enqueue(1)
            q.enqueue(2)
            q.enqueue(3)
            expect(q.size).to eq(3)
            expect(q.peek).to eq(1)
        end
    end

    describe "#dequeue" do
        let(:q) {MyQueue.new}

        it 'removes and returns the first element in the queue' do
            q.enqueue(4)
            q.enqueue(7)
            q.enqueue(9)
            expect(q.dequeue).to eq(4)
        end
    end
end