def bubble_sort(ary)
  i = 1
  first_container = 0
  second_container = 0
  passes = ary.length - 1
  (passes - 1).times do
    passes.times do
      if ary[i - 1] > ary[i]
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

#examples
print bubble_sort([4,3,78,2,0,2])
puts "\n"
print bubble_sort([3000,1,9,222,11,69])