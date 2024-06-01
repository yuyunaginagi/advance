def select_sort(ary)
  (0...ary.length).each do |i|
    min = ary[i]
    min_position = i
    ((i+1)...ary.length).each do |j|
      if min > ary[j]
        min = ary[j]
        min_position = j
      end
    end
    tmp = ary[i]
    ary[i] = min
    ary[min_position] = tmp
  end
  return ary
end

ary = [245, 45, 32, 367, 122, 67, 14, 89]
p ary
p select_sort(ary)