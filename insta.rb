require 'httparty'
require 'nokogiri'

headers = {
  'User-Agent': 'Mozilla/5.0 (Windows; U; MSIE 9.0; WIndows NT 9.0; ko-KR))'
} 

url = "https://www.instagram.com/barackobama" # https://www.instagram.com/barackobama
res = HTTParty.get(url, headers: headers)
fol = Nokogiri::HTML(res).css('#react-root > section > main > div > header > section > ul > li:nth-child(2) > span > span')
puts fol