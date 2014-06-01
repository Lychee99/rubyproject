

def echo(str) 
	str
end

def shout(str)
	str.upcase
end

def repeat(str, num = 2)
	((str + " ") * num).strip
end

def start_of_word(str, num = 1)
	str[0..num-1]
end

def first_word(str)
	x = str.split(" ")
	x[0]
end

def titleize(str)
	y = ["a", "an", "the", "and", "but", "not", "for", "nor", "on", "at", "to", "from", "by", "over"]
	x = str.split(" ").map {|i| y.include?(i) ? i : i.capitalize}
	
	x[0] = x[0].capitalize
	x[-1] = x[-1].capitalize
	x = x.join(" ")
	x

end