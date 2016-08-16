def add(one, two)
	one + two
end

def divide(one, two)
	return "I don't think so" if (two == 0)
	one/two
end

puts add(2, 4)

puts divide(3, 0)
puts divide(3, 2)

2.times do |index|
	if index > 0
		puts index
	end
end

def stringReverse? str
	str === str.reverse
end
 p stringReverse?('racecar')

def maxStringDisplay str
	temp = {}
	tmpStr = str.split(' ')
	tmpStr.length.times do |subStr|
		temp[tmpStr[subStr]] = tmpStr.count(tmpStr[subStr])
	end
	temp.each do |key,value|
		puts key if value == temp.values.max 
	end
end
p maxStringDisplay 'demo choi choi ha ha he he he'