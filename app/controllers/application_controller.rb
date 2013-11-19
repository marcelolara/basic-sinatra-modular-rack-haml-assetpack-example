require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'

class ApplicationController < Sinatra::Base
  register Sinatra::AssetPack

  set :root, File.expand_path('../../',__FILE__)

  # puts "#{root}"

  helpers ApplicationHelpers
end