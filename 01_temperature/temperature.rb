def ftoc(current_fahrenheit)
  return ((current_fahrenheit - 32)*5.0/9.0).to_i
end

def ctof(current_celsius)

  return (current_celsius * 9.0 / 5.0 + 32.0).to_i
end

=begin
°F to °C	Deduct 32, then multiply by 5, then divide by 9
°C to °F	Multiply by 9, then divide by 5, then add 32
=end