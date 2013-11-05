require 'sinatra'
require 'haml'

get '/' do 
  @title= "base-sinatra-modular-rack-haml-assetpack-example"
  haml :home
end