def binary_search(array, target)
  head = 0
  tail = array.length - 1
  while head <= tail do
    center = (head + tail) / 2
    if array[center] == target
      puts "探している値は#{center + 1}番目にありました"
      return
    elsif array[center] < target
      head = center + 1
    else
      tail = center - 1
    end
  end
  puts "探している値は見つかりませんでした"
  end
  
  array = [24, 30, 45, 67, 90, 12, 454, 100]
  binary_search(array, 454)
  binary_search(array, 12)