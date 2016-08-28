require 'net/http'

Net::HTTP.start('www.rubyinside.com') do |http|
	req = Net::HTTP::Get.new('/test.txt')
	puts http.request(req).body
end

url = URI.parse('http://www.rubyinside.com/test.txt')
Net::HTTP.start(url.host, url.port) do |http|
	req = Net::HTTP::Get.new(url.path)
	puts http.request(req).body
end

url = URI.parse('http://www.rubyinside.com/test.txt')
response = Net::HTTP.get_response(url)
puts response.body