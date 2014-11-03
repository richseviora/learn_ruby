class Changer
  def self.make_change(value)
    coin_values = [25,10,5,1]
    change_made = []
    until value == 0
      largest_value = coin_values.select {|coin_value| coin_value <= value}.first
      value -= largest_value
      change_made << largest_value
    end
    change_made
  end
end