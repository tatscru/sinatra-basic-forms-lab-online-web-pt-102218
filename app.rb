require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :index
  end 
  
  get '/new' do 
    erb :create_puppy
  end 
  
  post '/puppy' do 
    @breed = Puppy.new(params[:breed])
    erb :display_puppy
  end 
    
  
end
