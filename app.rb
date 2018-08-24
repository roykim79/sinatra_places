require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/place'
require 'pry'

get '/' do
  @places = Place.all()
  erb(:places)
end
