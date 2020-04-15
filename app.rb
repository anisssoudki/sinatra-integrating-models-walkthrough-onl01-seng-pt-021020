require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    @analyzed_text = TextAnalyzer.new(text_from_user)
    
      def count_of_words
          @numberofwords = text_from_user.split(" ").size
      end
    
    vowels = ["a", "i", "o", "u", "e"]
    nonvowels =  text_from_user.split(" ").join.split("") - vowels
    @vowels = text_from_user.split(" ").join.split("") - nonvowels
    @constants = nonvowels
    sameletter = []
    
     hashy = text_from_user.split(" ").join.split("").each_with_object(Hash.new(0)) { |e,h| h[e] +=1 }
     
       @numrepeat = hashy.values.max
       
       @commonletter =  hashy.select {|k,v| k if @numrepeat == v}.keys[0] 
           
    erb :results
  end
end
