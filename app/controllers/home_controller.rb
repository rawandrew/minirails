class HomeController < ApplicationController
  before_action :header

  def index
    response.write "<p>Hello from the Home Controller</p>"
  end

  def header
    response.write "<h1>Mini Rails App</h1>"
  end
end
