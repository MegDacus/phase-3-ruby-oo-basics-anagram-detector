require 'pry'

class Anagram
    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(array)
        word_letters = @word.chars
        
        array.filter do |word|
            array_letters = word.chars
            
            if word_letters.sort == array_letters.sort
                 word
            else
                nil
            end 
        end 
    end
end


cat = Anagram.new('cat')
puts cat.match(%w[pat, tar, life, love])
