# Your code goes here!
class Anagram
    attr_reader :word
    

  def initialize(word)
     @word = word
  end

  def match(word_array)
    arr =[]
      word_array.each do |word|
       if ((self.word).length == word.length)
          new_word = (self.word).downcase.split('').sort
          found_word = word.downcase.split('').sort
          if (new_word == found_word)
            arr.push(word)
          end
       end
      end
      arr
  end

end

name =Anagram.new("Listen")
pp name.match(%w[hello world zombies pants dipper])