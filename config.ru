#To start the server run in the terminal: shotgun -I. -Ilib

require 'mini_rails'

use Rack::ContentType, "text/html"
run MiniRails::Application.new