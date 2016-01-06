require "app/app"

class UsersController < ApplicationController
  def index
    response.write "<ul>"
    User.all.each do |user|
      response.write "<li><p>#{user.name}</p></li>"
    end
    response.write "</ul>"
  end
end