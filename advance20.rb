def quick_sort(ary)
  return ary if ary.length < 2
  pivot = ary.shift
  smaller = [] # 基準値よりも小さい配列
  bigger  = [] # 基準値よりも大きい配列

  ary.each do |num|
    if num < pivot
      smaller << num
    else
      bigger << num
    end
  end
    quick_sort(smaller)+ [pivot] + quick_sort(bigger)
end

ary = [45, 245, 32]
p ary
p quick_sort(ary)