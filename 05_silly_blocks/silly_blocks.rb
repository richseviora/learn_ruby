def reverser
  if block_given?
    obj = yield
    words = obj.split(' ')
    words.each {|word| word.reverse!}
    words.join(' ')
  end
end

def adder(add_value = 1)
  if block_given?
    obj = yield
    obj += add_value
  end
end

def repeater(number_times = 1)
  if block_given?
    number_times.times {yield}
  end
end