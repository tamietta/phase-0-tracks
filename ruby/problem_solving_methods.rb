# SEARCH ARRAY METHOD

def search_array(array, integer)
    return_index = nil
    array.length.times do |idx|
      if array[idx] == integer
        return_index = idx
      end
    end
    return_index
end

# TEST CODE

arr  = [42, 89, 23, 1]

p search_array(arr, 89) == 1
p search_array(arr, 10) == nil


# FIBONACCI METHOD

def fib(n)
  fib_array = [0, 1]
  if n == 1
    return fib_array[0..0]
  elsif n == 2
    return fib_array[0..1]
  else
    (n-2).times do 
      new_fib = fib_array[-2] + fib_array[-1]
      fib_array.push(new_fib)
    end
  end
  fib_array
end

# TEST CODE

p fib(1) == [0]
p fib(2) == [0,1]
p fib(3) == [0,1,1]
p fib(6) == [0,1,1,2,3,5]
p (fib(100)[-1] == 218922995834555169026)


# BUBBLE SORT METHOD

# Pseudocode
# Define a method that takes an array as parameter
# As many times as there are array items
#  - Compare adjacent items and swap if right one is less than left
# Return sorted array

def bubble_sort (array)
  for j in 0..(array.length)
    for i in 0..(array.length - 2)
      if array[i] > array[i+1]
        max = array[i]
        min = array[i+1]
        array[i] = min
        array[i+1] = max
        # simultaneous assignment version
        # array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end
  array
end

# TEST CODE

a = [3,2,5,1,10,4,6,72,2,15]

p bubble_sort(a) == a.sort
