require "pry"
class PigLatinizer

  attr_accessor :text

  def piglatinize(text)
    text.split.map do |word|
      pig_word(word)
    end.join(" ")
  end

  def starts_with_vowel?(word)
    x = word.downcase
    x[0].match(/a|e|i|o|u/) != nil
  end

  def pig_word(word)
    if starts_with_vowel?(word) == false
      x = word.split /([aeiou].*)/
      result = x[1] + x[0] + "ay"
    else
      if word[1] == nil
        result = word[0] + "way"
      else
        result = word + "way"
      end
    end
    result
  end

end

