# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  i = 0
  arr.each do |elem|
    i += elem
  end
  return i
end

def max_2_sum arr
  # YOUR CODE HERE
  if (arr.length == 0)
    return 0
  elsif (arr.length == 1)
    return arr[0]
  else
    a = [arr[0], arr[1]]
    max1 = a.max
    max2 = a.min
    arr.delete_at(0)
    arr.delete_at(0)
    arr.each do |elem|
      if (elem > max1)
        max1 = elem
        max2 = max1
      elsif (elem > max2)
        max2 = elem
      end
      return max1 + max2
    end
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if (arr.length < 2)
    return false
  else
    arr.length.times do |i|
      arr_copy = Marshal.load(Marshal.dump(arr))
      arr_copy.delete_at(i)
      x = arr[i]
      arr_copy.each do |elem|
        if ((x + elem) == n)
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s == "")
    return false
  end
  str = s.downcase
  if (str[/[a-z]+/] != str)
    return false
  end
  if (str[0] == "a" || str[0] == "e" || str[0] == "i"  || str[0] == "o" || str[0] == "u")
    return false
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s == "")
    return false
  elsif (s[/[0-1]+/] != s)
    return false
  else
    if (s.to_i(2) % 4 == 0)
      return true
    else
      return false
    end
  end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError if (isbn == "" || price <= 0.0)
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    p = '%.2f' % price
    return "$" + p.to_s
  end
end
