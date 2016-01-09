class HomeController < ApplicationController
  before_action :header
  after_action :footer

  def index
    response.write "<p>Hello from the Home Controller</p>"
  end

  def header
    response.write "<h1>Mini Rails App</h1>"
  end

  def footer
    response.write "<p>Copyright Mini Rails 2016</p>"
  end

end
