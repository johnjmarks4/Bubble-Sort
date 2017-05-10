def bubble_sort(arr)
  i = 1
  first_container = 0
  second_container = 0
  passes = arr.length - 1
  (passes - 1).times do
    passes.times do
      if arr[i - 1] > arr[i]
        first_container = arr[i]
        second_container = arr[i - 1]
        arr[i - 1] = first_container
		    arr[i] = second_container
      end
    i += 1
    end
  i = 1
  end
  return arr
end