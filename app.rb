require 'sinatra'
require 'sinatra/reloader'

get '/bob' do
  return "bob"
end

get '/:num' do
  if params[:num].to_i!=0
    "#{params[:num]} bottles of beer on the wall.
    <a href=/#{params[:num].to_i-1}>Take One Down</link>"
  elsif params[:num].to_i==0
    "No more bottles of beer on the wall.
    <a href=/99>Start Over</link>"
  end
end
