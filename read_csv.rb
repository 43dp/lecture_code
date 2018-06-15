require 'csv'

yes = 0

CSV.foreach("vote.csv") do |v|
    yes = yes + v[1].to_i
end

puts yes
# 홍석찡이 나갔으면 좋겠다는 사람들의 수를 구하세용
# == 찬성한 사람의 수
# == v[1] 수의 합