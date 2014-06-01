def translate(str)
	vowel = ["a","e", "i", "o", "u"]
	consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	x = str.split(" ").map do |i|
	
		if vowel.include?(i[0])
			i = i + "ay"
		else 
			if ("sch").include?(i[0..2])
				i = i[3..i.length-1] + "schay"
			elsif ("qu").include?(i[0..1])
				i = i[2..i.length-1] + "quay"
			elsif (vowel.include?(i[1]))
				i = i[1..i.length-1] + i[0] + "ay"
			elsif ("qu").include?(i[1..2])
				i = i[3..i.length-1] + i[0..2] + "ay"

			else
				if (vowel.include?(i[2]))
					i = i[2..i.length-1] + i[0..1] + "ay"
				elsif (consonant.include?(i[2]))
					i = i[3..i.length-1] + i[0..2] + "ay"
				end
			end
		
		end
	end
	x = x.join(" ")
	x
end
