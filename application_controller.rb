require 'bundler'
Bundler.require
require_relative 'models/fortune.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/heart' do  
    erb :heart
  end
  get '/life' do
    erb :life
    
  end

  get '/fortune' do
   
    erb :fortune
  end

  post '/life' do
    @my_life_line_length = params[:life_line_length]
    @my_life_line_start = params[:life_line_start]
    @my_life_line_end = params[:life_line_end]
    @my_life_line_shape = params[:life_line_shape]
    @my_life_line_break = params[:life_line_break]
    erb :heart
  end
  
  post '/heart' do
    @heart= params
    @result_heart=tell_heart_fortune(@heart)
    @result_life=tell_life_fortune(@heart)
    erb :fortune
  end
end
