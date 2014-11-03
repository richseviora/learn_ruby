def add(value1, value2)
  return (value1.to_f + value2.to_f).to_i
end

def subtract(value1, value2)
  return (value1 - value2)
end

def sum(value_array)
  result = 0
  value_array.each {|value| result += value}
  result
end

def multiply(*values)
  result = 1
  values.each {|value| result *= value}
  result
end

def factorial(value)
  if value == 0
    return 1
  end
  result = 1
  (1..value).each do |value|
    result *= value
  end
  result
end