def bubble_sort(value)
  value.length.times do
    (0...value.length - 1).each do |j|
      next unless value[j] > value[j + 1]

      switch = value[j]
      value[j] = value[j + 1]
      value[j + 1] = switch
    end
  end
  value
end

unsorted = (1..10).to_a.reverse!
puts bubble_sort(unsorted) == unsorted.sort

arr = %w[hello hi hey]

def bubble_sort_by(my_arr)
  my_arr.length.times do
    i = 0
    while i < my_arr.length - 1
      x = my_arr[i]
      y = my_arr[i + 1]
      yield(x, y)
      my_arr.slice!(i, 2)
      if yield(x, y) < 1
        my_arr.insert(i, x, y)
      else
        my_arr.insert(i, y, x)
      end
      i += 1
    end
  end
  my_arr
end

puts bubble_sort_by(arr) { |left, right| left.length - right.length } == %w[hi hey hello]
