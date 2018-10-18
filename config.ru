require 'pry'
require 'json'

class HandleWithCare
  def call(env)
    req = Rack::Request.new(env)
    body = JSON.parse(req.body.read)

    puts body

    [200, {}, []]
  rescue(e)
    puts e.inspect
  end
end

run HandleWithCare.new
