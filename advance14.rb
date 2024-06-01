def select_sort(ary)
  length = ary.length

  (0...length).each do |i|
    min = ary[i]
    min_position = i

     ((i+1)...length).each do |j|
      if min > ary[j]
        min = ary[j]
        min_position = j
      end
     end
     tmp = ary[i]
     ary[i] = min
     ary[min_position] = tmp
  end
  
  ary
end
ary = [245, 45, 32, 367, 122, 67, 14, 89]
p ary
p select_sort(ary)