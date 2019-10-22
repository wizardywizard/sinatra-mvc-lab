require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do 
        erb :user_input
    end

    post "/piglatinize" do 
        pig = PigLatinizer.new
        @text = pig.piglatinize(params[:user_phrase])
        erb :results
    end

end