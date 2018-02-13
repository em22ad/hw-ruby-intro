# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  if arr.length > 0 then
    arr.each do |item|
      total += item
    end
    return total
  else
    return 0
  end
end

#puts "sum is #{sum([])}"

def max_2_sum arr
  total=0
  if arr.length > 0 then
    total=arr.max(2).reduce(:+)
    return total
  else
    return 0
  end
end

#puts "sum is #{max_2_sum([1,2,3])}"

def sum_to_n? arr, n
 !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  source = "Hello, " + name
  return source
end

def starts_with_consonant? s
  if s.empty?
  	return false
  elsif (/[^AEIOU]/i =~ s[0]  && /[A-Z]/i =~ s[0])
    return true
  else
    return false
  end
end

#puts "starts_with_consonant #{starts_with_consonant?("bee")}"

def binary_multiple_of_4? s
	if (s.to_s =~ /\b[01]+\b/)
	  if (s.to_i % 4 == 0)
		  return true
		end
	else
		return false
	end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if (isbn.empty? || price <= 0)
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%.2f", @price)
  end
end