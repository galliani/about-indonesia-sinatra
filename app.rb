require 'sinatra'
require 'sinatra/json'
require 'sinatra/activerecord'

require 'dotenv'
Dotenv.load('config/development.env', 'config/test.env')

set :database_file, 'config/database.yml'

require './models/province.rb'
require './routes.rb'
