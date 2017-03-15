arr  = [42, 89, 23, 1]

def search(array, integer)
    return_index = nils
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