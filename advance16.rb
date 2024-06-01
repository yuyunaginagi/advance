def bubble_sort(ary)
  (1...ary.length).each do |i|
    (i...ary.length).reverse_each do |j|
      if ary[j - 1] > ary[j]
        tmp = ary[j - 1]
        ary[j - 1] = ary[j]
        ary[j] = tmp
      end
    end
  end
  return ary
end

ary = [245, 45, 32, 367, 122, 67, 14, 89]
p ary
p bubble_sort(ary)