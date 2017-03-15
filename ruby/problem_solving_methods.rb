arr  = [42, 89, 23, 1]

def search(array, integer)
    return_index = nil
    array.length.times do |idx|
      if array[idx] == integer
        return_index = idx
      end
    end
    return_index
end

p search(arr, 10)