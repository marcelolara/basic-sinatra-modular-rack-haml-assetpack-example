class WebsiteController < ApplicationController
  register Sinatra::AssetPack

  assets do
    serve '/css', from: 'assets/css'

    css:application, '/css/application.css', [
      '/css/reset.css',
      '/css/layout.css'
    ]
    css_compression :yui
  end

  get '/' do
    @title= "base-sinatra-modular-rack-haml-assetpack-example"
    haml :home
  end
end