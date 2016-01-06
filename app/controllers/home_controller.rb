class HomeController < ApplicationController
  def index
    response.write "Hello from the Home Controller"
  end
end
