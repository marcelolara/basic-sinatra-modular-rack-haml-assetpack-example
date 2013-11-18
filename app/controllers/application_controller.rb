require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'

class ApplicationController < Sinatra::Base
  set :root, File.expand_path('../../',__FILE__)

  # puts "#{root}"
end