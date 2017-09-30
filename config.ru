require 'rack/protection'
use Rack::Protection, without_session: true, except: [:http_origin]

require './app'

run Sinatra::Application