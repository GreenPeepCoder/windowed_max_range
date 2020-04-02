require_relative "mystack"

class MinMaxStack
    def initialize
        @store = MyStack.new
    end

    def peek
        # now, instead of each element being an integer, each element its own hash
        # storing THAT element's val, as well as the curr max and min of the 
        # whole stack, taking new val that was just added into account
        # THEREFORE, we have to call the appropriate key in the element's hash
        @store.peek[:val]
    end

    def size
        @store.size
    end

    def empty?
        @store.empty?
    end

    def max
        @store.peek[:max] unless empty?
    end
    
    def min
        @store.peek[:min] unless empty?
    end

    def pop
        @store.pop[:val] unless empty?
    end

    def push(ele)
        @store.push({
            :max => new_max(ele),
            :min => new_min(ele),
            :val => ele
        })
    end

    private 

    def new_max(val)
        empty? ? val : [max, val].max
    end
    
    def new_min(val)
        empty? ? val : [min, val].min
    end
end