# Your TextAnalyzer model code will go here.
class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end
      def count_of_words
          @numberofwords = @text.split(" ").size
      end
      
    def count_of_vowels
       vowels = ["a", "i", "o", "u", "e"]
       @nonvowels =  @text.split(" ").join.split("") - vowels
        @vowels = @text.split(" ").join.split("") - @nonvowels
        @vowels.size
     end
     def count_of_consonants
         @constants = @nonvowels
         @constants.count
     end
   
    def most_used_letter_times
      
    @hashy = @text.split(" ").join.split("").each_with_object(Hash.new(0)) { |e,h| h[e] +=1 }
  
       @numrepeat = @hashy.values.max
      end
        def most_used_letter
          most_used_letter_times
         @commonletter =  @hashy.select {|k,v| k if @numrepeat == v}.keys[0]
           @commonletter
   
   end
  end