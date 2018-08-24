require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/place'
require 'pry'

get '/' do
  Place.clear()
  @places = Place.all()
  erb(:places)
end

post '/' do
  name = params.fetch('name')
  place = Place.new(name)
  place.save()
  @places = Place.all()
  erb(:places)
end
