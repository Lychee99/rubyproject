class Book

	def title=(title)
		words = title.split(" ")
		words.each do |i|
			unless %w(a an the on over and in of).include?(i)
				i.capitalize!
			end
		end
		words[0].capitalize!
		@title = words.join(" ")
		
	end
	def title
		@title
	end
end


