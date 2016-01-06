$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'mini_rails'

$LOAD_PATH.unshift File.expand_path('../../app', __FILE__)
require 'app'


require 'minitest/autorun'
