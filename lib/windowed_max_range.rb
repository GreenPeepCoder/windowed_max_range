def max_window_range(arr, window_size)
    current_max_range = 0
    w = window_size - 1
    i = 0
    while w < arr.length
        window = arr[i..w]
        curr_range = window.max - window.min
        current_max_range = curr_range if curr_range > current_max_range
        i += 1
        w += 1
    end
    current_max_range
end