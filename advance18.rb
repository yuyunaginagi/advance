def bubble_sort(array)
  length = array.length
  (1...length).each do |i|
    (i...length).reverse_each do |j|
      if array[j - 1] > array[j]
        tmp = array[j - 1]
        array[j - 1] = array[j]
        array[j] = tmp
      end
    end
  end
  array
end

array = [10, 2, 34, 15, 8, 1]
p array
array = bubble_sort(array)
p array