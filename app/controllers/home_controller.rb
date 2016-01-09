class HomeController < ApplicationController
  before_action :header
  after_action :footer

  def index
    @message = "Hello from the home controller"
    render :index
  end

  def header
    response.write "<h1>Mini Rails App</h1>"
  end

  def footer
    response.write "<p>Copyright &copy Mini Rails 2016</p>"
  end

end
