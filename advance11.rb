def linear_search(array, target)
  array.each.with_index(1) do |num, index|
    if num == target
      puts "探している値は#{index}番目にあります"
      return
    end
  end
  puts "探している値は見つかりませんでした"
  end
  array = [24, 30, 45, 67, 90, 12, 454, 100]
  linear_search(array, 45)
  linear_search(array, 5)