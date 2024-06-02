def birth(adult)
  adult
end

def grow(child)
  child
end

def mouse_grow_count(year)
  year * (12 / 3)
end

# ネズミの合計を計算するメソッド
def cal_animal_count(adult, child)
  (adult + child) * 2
end

adult = 0 # 大人のネズミ
child = 0 # 子供のネズミ
# 成獣のネズミ１組投入
adult += 1
puts "----------#{0}ヶ月目----------"
puts "ネズミは合計#{cal_animal_count(adult, child)}匹です"

# 2年経過するように繰り返し処理をする
1.upto(mouse_grow_count(2)) do |i|
  puts "----------#{i * 3}ヶ月目----------"
  # ここに繁殖する処理をかく

  previous_adult = adult
  previous_child = child
  child = birth(previous_adult)
  adult += grow(previous_child)
  puts "前回存在した幼獣#{previous_child}組が成獣になり、成獣は合計で#{adult}組になりました"
  puts "前回存在した成獣#{previous_adult}組が幼獣を産み、幼獣は合計で#{child}組になりました"
  puts "ネズミは合計#{cal_animal_count(adult, child)}匹です"
end

p cal_animal_count(adult, child)