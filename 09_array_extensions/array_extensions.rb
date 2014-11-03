class Array
  def sum
    results = 0
    self.each {|value| results += value}
    results
  end

  def square
    self.map {|value| value = value ** 2}
  end

  def square!
    self.map! {|value| value = value ** 2}
  end
end