require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)

  register Sinatra::AssetPack

  assets {

    # Configure folder to save files
    serve '/css', from: 'app/css'

    # Group different files in one directive
    css :application, '/css/application.css', [
      '/css/reset.css',
      '/css/layout.css'
    ]

    # Set file compression
    css_compression :yui
  }

  get '/' do 
    @title= "base-sinatra-modular-rack-haml-assetpack-example"
    haml :home
  end
end