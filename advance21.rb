def quick_sort(array)
  return array if array.length < 2
  pivot = array.shift
  smaller = [] # 基準値よりも小さい配列
  bigger  = [] # 基準値よりも大きい配列

  array.each do |num|
    if num < pivot
      smaller << num
    else
      bigger << num
    end
  end
    quick_sort(smaller)+ [pivot] + quick_sort(bigger)
end

array = [23, 41, 13, 4, 6, 1, 39]
p array
array = quick_sort(array)
p array