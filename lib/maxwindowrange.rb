require_relative "minmaxstackqueue"

# O(n) - optimized solution
def max_window_range(array, window_size)
    queue = MinMaxStackQueue.new
    max_range = nil

    array.each do |ele|
        queue.enqueue(ele)
        queue.dequeue if queue.size > window_size

        if queue.size == window_size
            curr_range = queue.max - queue.min
            max_range = curr_range if max_range == nil || curr_range > max_range
        end
    end

    max_range
end