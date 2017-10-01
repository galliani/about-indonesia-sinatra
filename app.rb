require 'sinatra'
require 'sinatra/json'
require 'sinatra/namespace'
require 'sinatra/activerecord'

require 'dotenv'
Dotenv.load('config/local.env')

require './config/cors.rb'

set :database_file, 'config/database.yml'

require './models/province.rb'
require './routes.rb'
