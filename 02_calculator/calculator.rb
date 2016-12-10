#write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(nums)
  sum = 0
  nums.each { |i| sum += i }
  sum
end

def multiply(nums)
  res = 1
  nums.each { |i| res *= i }
  res
end

def power(a, b)
  a**b
end

def factorial(a)
  f = 1
  if a == 0 || a == 1
    return f
  else
    (1..a).each { |i| f *= i }
  end
  f
end

p factorial(2)
