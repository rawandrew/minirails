class EchoController < ApplicationController
  def index
    response.write "You said: " + request['text'] #url: /echo/?text=echo_text
  end
end