class HomeController < ApplicationController
  before_action :header
  after_action :footer

  def index
    @message = "Hello from the home controller"
    render :index
  end

  def header
    render :header
  end

  def footer
    render :footer
  end

end
