def reverse_words(phrase)
  words = phrase.split(" ")
  words.map{ |word| word.reverse}.join(' ')
end

def reverser
  reverse_words(yield)
end

def adder(num = 1, &block)
	block.call + num
end

def repeater(num = 1, &block)

	n = 0
	num.times do
		n += 1
		block.call
	end
	
	n
end

