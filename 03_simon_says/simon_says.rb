def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string,*times)
  if times.empty?
    "#{string} #{string}"
  else
    result_array = []
    number_of_repeats = times.first
    number_of_repeats.times {|repeat| result_array << string}
    result_array.join(' ')
  end
end

def start_of_word(string,number_of_letters)
  string[0,number_of_letters]
end

def first_word(string)
  string.split(" ").first
end

def titleize(string)
  word_array = string.split(' ')
  word_array.each do |word|
    case word
      when 'and'
      when 'or'
      when 'a'
      when 'the'
      when 'an'
      when 'nor'
      when 'to'
      when 'with'
      when 'without'
      else
        word.capitalize!
    end
  end
  word_array[0] = word_array.first.capitalize
  word_array.join(' ')
end
=begin
Do not capitalize a, an, or the unless it is first or last in the title.
Do not capitalize the word and, or, or nor unless it is first or last in the title.
Do not capitalize the word to, with or without an infinitive, unless it is first or last in the title.
=end