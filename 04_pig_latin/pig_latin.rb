def translate(word)
  case
    when word.match(/^[aeiouy]/)
      word + 'ay'
    else
      matches = word.match(/^(?<first>[^aeiouy]+)(?<rest>[a-z]*)/)
      matches[:rest] + matches[:first] + 'ay'
  end
end