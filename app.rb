# -*- coding: utf-8 -*-
require 'sinatra'
require 'sinatra/flash'



#Root
get '/' do
	erb :index
end

#Error
get '/failure' do
	flash[:notice] = %Q{<h3>Error</h3> &#60; <a href="/">Back</a> }
end
