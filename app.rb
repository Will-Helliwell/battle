require 'sinatra'

configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do
  "Hi"
end

get '/secret' do
  "This is super super secret indeed."
end

get '/ollie' do
  "Ollie is my pair partner today."
end

get '/random-duck' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-duck' do   # post = what can that webpage receive (get vs. post)
  p params
  @name = params[:duckname]
  erb(:index)
end

get '/mad-duck' do
  p params
  @name = params[:duckname]
  erb(:index2)
end
