n = gets.to_i

divisors = []
i = 1

1.upto(n) do |i|
  divisors << i if n % i == 0
end

puts "#{n}の約数は#{divisors.length}個です"
