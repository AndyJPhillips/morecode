#!/usr/bin/ruby

def calculate(num1,num2)
	raise ArgumentError, 'I was expecting something different' unless num1.is_a?(Integer) && num2.is_a?(Integer)
	sum = num1 + num2
	puts sum
	return sum
end

calculate(1,"dave")