require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    
    @numberofwords = text_from_user.split(" ").size
    vowels = ["a", "i", "o", "u", "e"]
    nonvowels =  text_from_user.split(" ").join.split("") - vowels
    @vowels = text_from_user.split(" ").join.split("") - nonvowels
    @constants = nonvowels
    sameletter = []
    
     @commonletter = text_from_user.split(" ").join.split("").sort.collect do |letter|
         
           letter
     
        end
          
    erb :results
  end
end
