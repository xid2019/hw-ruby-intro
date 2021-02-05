# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  i = 0
  sum = 0
  while arr.length > i
    sum = sum + arr[i]
    i = i + 1
  end
  return sum
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    array = arr.sort.reverse
    return array[0]+array[1]
  end
end


def sum_to_n? arr, n
  arrSum = Array.new
  i = 0
  while i < arr.length
    j = i + 1
    while j < arr.length
      arrSum = arrSum + [arr[i] + arr[j]]
      j = j + 1
    end
    i = i + 1
  end
  i = 0
  return arrSum.include? n
end

# Part 2

def hello(name)
  return 'Hello, ' + name.to_s
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  notConsonant = 'aeiouAEIOU'
  letter = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  firstLetter = s[0]
  
  if not(letter.include? firstLetter)
    return false
  end
  return not(notConsonant.include? firstLetter)
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  end
  i = 0
  while i < s.length
    if s[i] != '1' and s[i] != '0'
      return false
    end
    i = i + 1
  end
  res = s.to_i(2)%4
  if res == 0 
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f", @price)
  end
end
