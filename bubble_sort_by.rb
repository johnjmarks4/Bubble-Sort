def bubble_sort_by(arr)
  i = 1
  first_arr = 0
  second_arr = 1
  first_container = []
  second_container = []
  passes = arr.length - 1
    (passes - 1).times do
      passes.times do
        value = yield(arr[first_arr],arr[second_arr])
        first_arr += 1 
        second_arr += 1
        if value > 0
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

#example:
#bubble_sort_by(["hi","hello","hey"]) do |left,right|
  #left.length - right.length
#end