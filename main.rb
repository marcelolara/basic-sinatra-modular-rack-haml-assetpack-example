require 'sinatra/base'
require 'haml'

class App < Sinatra::Base

  get '/' do 
    @title= "base-sinatra-modular-rack-haml-assetpack-example"
    haml :home
  end
end