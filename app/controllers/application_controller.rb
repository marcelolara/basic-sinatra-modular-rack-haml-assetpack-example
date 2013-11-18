require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'

class ApplicationController < Sinatra::Base
  set :root, File.expand_path('../../',__FILE__)

  # puts "#{root}"

  register Sinatra::AssetPack

  assets {

    # Configure folder to save files
    serve '/css', from: 'assets/css'

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