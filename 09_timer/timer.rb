class Timer
	attr_accessor :seconds

	def seconds (n= 0)
		@seconds = n
	end
	def time_string
		Time.at(@seconds).gmtime.strftime("%H:%M:%S")
	end
end
