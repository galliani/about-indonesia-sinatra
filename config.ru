require 'rack/protection'
use Rack::Protection, without_session: true

require './app'

run Sinatra::Application