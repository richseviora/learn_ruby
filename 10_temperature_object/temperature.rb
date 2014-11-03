class Temperature
  def initialize(value_hash)
    if value_hash[:f]
      @temperature_base = value_hash[:f]
    elsif value_hash[:c]
      @temperature_base = value_hash[:c] * 9.0 / 5.0 + 32.0
    end
  end

  def to_fahrenheit
    return @temperature_base
  end

  def to_celsius
    return ((@temperature_base - 32.0) * 5.0 / 9.0).to_i
  end

  def self.in_celsius(value)
    self.new({c: value})
  end

  def self.in_fahrenheit(value)
    self.new({f: value})
  end
end

class Celsius < Temperature
  def initialize(value)
    super(c: value)
  end
end

class Fahrenheit < Temperature
  def initialize(value)
    super(f: value)
  end
end

=begin
°F to °C	Deduct 32, then multiply by 5, then divide by 9
°C to °F	Multiply by 9, then divide by 5, then add 32
=end