require 'bundler'
Bundler.require
#require_relative 'models/connect.rb' #need to change the model route/ruby file when combining w/ sam's ruby
require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end

get '/personalized' do
  erb :index
  end


  post '/personalized' do
    #binding.pry
    @neighborhood = params[:neighborhood]
    @price = params[:price]
    @gender = params[:gender]

    @preference = stores(@neighborhood, @price, @gender)
   # binding.pry

    @preference.each do |store_name, store_details|
  store_details.each do |key, value|
    "#{store_name} #{key}: #{value}"
  end
end

    erb :page2
  end


end
