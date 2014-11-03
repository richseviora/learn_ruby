class Dictionary < Hash
  def entries
    result = {}
    # self.each_pair {|key, value|}
    self.to_hash
  end

  def keywords
    self.keys.sort
  end

  def add(value)
    if value.is_a? (Hash)
      value.each {|key, value| self[key] = value}
    elsif value.is_a? (String)
      self[value] = nil
    end
  end

  def include?(keyword)
    self.has_key?(keyword)
  end

  def find(keyword)
    self.select {|key, value| key.include?(keyword)}
  end
end