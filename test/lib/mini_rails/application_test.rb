require 'test_helper'

class MiniRails::ApplicationTest < Minitest::Test
  def setup
    @app = MiniRails::Application.new
  end
  def test_routing
    assert_equal ['home', 'index'], @app.route('/home/index'), "It finds the right controller and action"
    assert_equal ['home', 'index'], @app.route('/'), "It finds the right controller and action"
    assert_equal ['users', 'index'], @app.route('/users/'), "It finds the right controller and action"
    assert_equal ['users', 'show'], @app.route('/users/show'), "It finds the right controller and action"
  end

  def test_load_controller_class
    klass = @app.load_controller_class('home')
    assert_equal HomeController, klass, "It returns the right controller class"
  end

end