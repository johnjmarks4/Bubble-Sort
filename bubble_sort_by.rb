def bubble_sort_by(ary)
  i = 1
  first_ary = 0
  second_ary = 1
  first_container = []
  second_container = []
  passes = ary.length - 1
    (passes - 1).times do
      passes.times do
        value = yield(ary[first_ary],ary[second_ary])
        first_ary += 1 
        second_ary += 1
        if value > 0
          first_container = ary[i]
          second_container = ary[i - 1]
          ary[i - 1] = first_container
          ary[i] = second_container
        end
        i += 1
      end
      i = 1
    end
  return ary
end

#example:
print bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }