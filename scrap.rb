require 'httparty'
require 'nokogiri'

# 1. naver에 원하는 정보가 담긴 페이지를 요청한다.
# 2. 네이버에게 받은 문서 안에 있는 원하는 정보를 빼온다.
# 3. 빼온 정보를 출력한다.

headers = {
  'User-Agent': 'Mozilla/5.0 (Windows; U; MSIE 9.0; WIndows NT 9.0; ko-KR))'
}

res = HTTParty.get("https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&q=%ED%99%98%EC%9C%A8", headers: headers)
val = Nokogiri::HTML(res).css("#exchangeColl > div.coll_cont > div > div.wrap_info > div.info_price > div.stock_down.inner_price > em")
puts val