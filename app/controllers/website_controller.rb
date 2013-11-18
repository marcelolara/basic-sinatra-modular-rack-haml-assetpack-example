class WebsiteController < ApplicationController
  register Sinatra::AssetPack

  assets do
    # Configure folder to save files
    serve '/css', from: 'assets/css'

    # Group different files in one directive
    css :application, '/css/application.css', [
      '/css/reset.css',
      '/css/layout.css'
    ]

    # Set file compression
    css_compression :yui
  end

  get '/' do
    @title= "base-sinatra-modular-rack-haml-assetpack-example"
    haml :home
  end
end