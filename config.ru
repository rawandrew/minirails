#To start the server run in the terminal: shotgun -I. -Ilib

class MyApp
  def call(env)
    [
        200,
        {'Content-Type' => 'text/plain'},
        [env['PATH_INFO']]
    ]
  end
end

run MyApp.new


