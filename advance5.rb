require 'benchmark'

Benchmark.bm do |r|
  r.report "処理名" do
    # 計測するRubyの処理
  end
end