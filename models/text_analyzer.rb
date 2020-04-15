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
       @vowels = ["a", "i", "o", "u", "e"]
       @nonvowels =  text_from_user.split(" ").join.split("") - vowels
        @vowels = text_from_user.split(" ").join.split("") - nonvowels
     end
     def count_of_consonants
         @constants = nonvowels
     end
   
    def most_used_letter
      
     hashy = text_from_user.split(" ").join.split("").each_with_object(Hash.new(0)) { |e,h| h[e] +=1 }
     
       @numrepeat = hashy.values.max
       
       @commonletter =  hashy.select {|k,v| k if @numrepeat == v}.keys[0] 
           
    erb :results
   end
  end