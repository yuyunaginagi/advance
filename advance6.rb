require 'benchmark'

Benchmark.bm do |r|
  r.report "計算量がO(n^2)の場合\n" do
    1.upto(999) do |i|
      puts "#{i} + #{1000 - i} = 1000"
    end
  end
end