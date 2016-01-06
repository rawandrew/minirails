require 'test_helper'

class UserTest < Minitest::Test
  def test_initialize_with_attributes
    user = App::User.new(id: 1, name: "Jack")
    assert_equal 1, user.id, "The user must have an id"
    assert_equal "Jack", user.name, "The user must have a name"
  end
end