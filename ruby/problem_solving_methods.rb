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

p fib(1)
p fib(2)
p fib(3)
p fib(6)
p (fib(100)[-1] == 218922995834555169026)


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
      end
    end
  end
  array
end

puts bubble_sort([3,2,5,1,10,4,6,72,2,15])




