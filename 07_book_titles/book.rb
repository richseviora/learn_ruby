class Book
  attr_writer :title

  def initialize(title='')
    @title = title
  end

  def title
    titleize(@title)
  end

  def titleize(string)
    word_array = string.split(' ')
    non_capitalized_words = ['a', 'an', 'the', 'at', 'by', 'for', 'in', 'of', 'on', 'to', 'up', 'and', 'as', 'but', 'it', 'or', 'nor']
    word_array.each do |word|
      word.capitalize! unless non_capitalized_words.include?(word)
    end
    word_array[0] = word_array.first.capitalize
    word_array.join(' ')
  end
end