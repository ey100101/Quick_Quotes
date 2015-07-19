require 'bundler'
Bundler.require
require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/results' do
    @tags = []
    unless params[:people] == 'none'
      @tags.push(params[:people])
    end
    unless params[:topics] == 'none'
      @tags.push(params[:topics])
    end
    @quote1 = Quotes.new
    erb :results
  end
 
end