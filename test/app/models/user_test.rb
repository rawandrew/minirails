require 'test_helper'

class UserTest < Minitest::Test
  def test_initialize_with_attributes
    user = App::User.new(id: 1, name: "Jack")
    assert_equal 1, user.id, "The user must have an id"
    assert_equal "Jack", user.name, "The user must have a name"
  end

  def test_find
    user = App::User.find(1)
    assert_equal 1, user.id, "It finds an user in the db using an id"
  end

  def test_all
    user = App::User.all.first
    assert_kind_of App::User, user
    assert_equal 1, user.id
  end

  def test_table_name
    assert_equal "users", App::User.table_name
  end
end