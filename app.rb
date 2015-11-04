require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "99 bottles of beer on the wall. <a href='/98'>Take One Down.</a>"
end

get '/:num' do
  num=params[:num].to_i
  if num==0
    "No more bottles of beer on the wall.
    <a href=/99>Start Over</link>"
  else
    "#{num} bottles of beer on the wall.
    <a href=/#{num-1}>Take One Down.</link>"
  end
end
