arr = [4, 3, 78, 2, 0, 2]

def bubble_sort_by(my_arr)
  yield my_arr
end
bubble_sort_by(arr) do |x, y|
  arr.length.times do
    i = 0
    while i < arr.length - 1
      x = arr[i]
      y = arr[i + 1]
      sorted = x <=> y
      arr.slice!(i, 2)
      if sorted == -1
        arr.insert(i, x, y)
      else
        arr.insert(i, y, x)
      end
      i += 1
    end
  end
  puts arr.to_s
end

value = %w[hi hello hey]

def bubble_sort
  yield
end

bubble_sort do
  value.length.times do
    (0...value.length - 1).each do |j|
      next unless value[j] < value[j + 1]

      switch = value[j]
      value[j] = value[j + 1]
      value[j + 1] = switch
    end
  end

  print value
end
