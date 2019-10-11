require 'launchy'

def get_arg
  input = ARGV
  return input
end

def url_builder
	input = get_arg
	url = "https://www.google.com/search?q="
	input.each do |word|
		url << word
		url << "+"
	end
	return url.chomp('+')
end

def perform
	if get_arg.empty?
		puts "nike ta mere je veut un input"
		return
	end
	Launchy.open(url_builder)
end

perform