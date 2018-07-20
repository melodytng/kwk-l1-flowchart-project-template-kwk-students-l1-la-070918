# require_relative 'config/environment'

class ApplicationController < Sinatra::Base


   configure do
  	set :views, 'app/views'
  	set :public_folder, 'public'
  end
  
  get '/' do
    erb :layout
  end
  
  post '/' do
    erb :quiz 
  end
  
  get '/pacific' do
    erb :pacific
  end
  
  post '/' do 
    a1 = params[:ans]
    a2 = params[:ans2]
    a3 = params[:ans3]
    a4 = params[:ans4]
    a5 = params[:ans5]
    a6 = params[:ans6]
    @footprint = quiz(a1, a2, a3, a4, a5, a6)
    erb :results
  end  
end