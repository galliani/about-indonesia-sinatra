# ruby '2.2.2'
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-cross_origin'
# Use ActiveRecord as the ORM
gem 'sinatra-activerecord', '~> 2.0'

gem 'json'
# Use rake to execute ActiveRecord's tasks
gem 'rake'
gem 'thin'
gem 'rack'
gem 'logger'

gem 'pg'
gem 'dotenv'

# Prevent abusive requests
github 'sinatra/sinatra' do
  gem 'rack-protection'
end
gem 'require_all'