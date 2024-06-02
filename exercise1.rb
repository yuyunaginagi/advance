def binary_include?(array, target)
  head = 0
  tail = array.length - 1
  while head <= tail
    center = (head + tail) / 2
    if target < array[center]
      tail = center - 1
    elsif target > array[center]
      head = center + 1
    else
      return true
    end
  end
  return false
end

query_path = 'query.txt'
database_path = 'database.txt'
database = []
# データベース内容
File.open(database_path, mode = "r") do |f|
  f.each_line do |record|
    database << record.to_i
  end
end
database.sort!
# 検索クエリの処理
File.open(query_path, mode = "r") do |f|
  f.each_line do |query|
    query = query.to_i
    if binary_include?(database, query)
      puts "#{query}を見つけました"
    else
      puts "#{query}は見つかりませんでした" if index == database.length - 1
    end 
  end
end