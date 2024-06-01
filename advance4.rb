array = [1,2,3,4,5,6,7,8,9] # 変数の定義、1回の実行
array.each do |i|
  array.each do |j|
    puts i * j
  end
end