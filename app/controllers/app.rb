# -*- coding: utf-8 -*-
require 'rubygems'
require 'sinatra/base'
require 'sinatra/flash'

require_relative '../helpers/helpers.rb'
#require_relative '../models/model'
include AppHelpers

class App < Sinatra::Base
=begin
	#Database setup
	set :environment, :development

	configure :development, :test do
   		DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/bbdd.db" )
   	end
	DataMapper::Logger.new($stdout, :debug)
	DataMapper::Model.raise_on_save_failure = true
	DataMapper.finalize
	# DataMapper.auto_migrate!
	DataMapper.auto_upgrade!
=end

	#Sets paths
	set :root, File.dirname(__FILE__)
	set :views, File.dirname(__FILE__) + "/../views"
	set :public_folder, File.dirname(__FILE__) + "/../../public"

	#Set layout
	configure do
	  set :erb, :layout => :'layouts/layout'
	end

	#Root
	get '/' do
		erb :index
	end

	#Error
	get '/failure' do
		flash[:notice] = %Q{<h3>Error</h3> &#60; <a href="/">Back</a> }
	end

	#To run by Sinatra
	run! if __FILE__ == $0

end
