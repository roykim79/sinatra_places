require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/place'
require 'pry'

get '/' do
  erb(:places)
end
