# launchy 친구를 불러온다.
# launchy에게 브라우저 열어달라고 한다.

require "launchy"
require "uri"

# "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=멀티캠퍼스"

keywords = ["방탄소년단", "워너원", "빅뱅"]

url = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query="

# n = 0
# while (n < 3)
#     # 반복시킬 문장을 넣으면 됩니다.
#     Launchy.open(url + keywords[n])
#     n = n + 1
# end

keywords.each do |key|
    Launchy.open(url + key)
end

puts key
