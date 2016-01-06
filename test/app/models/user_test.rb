require 'test_helper'

class UserTest < Minitest::Test
  def test_initialize_with_attributes
    user = User.new(id: 1, name: "Jack")
    assert_equal 1, user.id, "The user must have an id"
    assert_equal "Jack", user.name, "The user must have a name"
  end

  def test_find
    user = User.find(1)
    assert_equal 1, user.id, "It finds an user in the db using an id"
  end

  def test_all
    user = User.all.first
    assert_kind_of User, user, "The returned element should be of class User"
    assert_equal 1, user.id, "The selected user has the correct id"
  end

  def test_table_name
    assert_equal "users", User.table_name, "It can find the db table name based on the class name"
  end
end