#To start the server run in the terminal: shotgun -I. -Ilib
Routes = {
    "GET" => {},
    "POST" => {}
}

class MyApp
  def call(env)
    method = env['REQUEST_METHOD']
    path = env['PATH_INFO']
    body = Routes[method][path].call
    [
        200,
        {'Content-Type' => 'text/plain'},
        [body]
    ]
  end
end

def get(path, &block)
  Routes['GET'][path] = block
end

run MyApp.new

get "/hi" do
  "hello"
end

