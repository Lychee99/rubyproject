def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(sumarray)
	sum = 0
	for i in sumarray
		sum = sum + i
	end
	sum
end

def multiply(*numbers)
	numbers.inject(1) {|start, numbers| start * numbers}
end

def power(num1, num2)
	num1 ** num2
end

def factorial(number)
	if (number == 0) || (number == 1)
		result = 1
	else
		result = 1
		for i in 2..number do
			result = result * i
		end
	end
	result
end