require 'pry'


class Application
  @@items = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      binding.pry
      if items.include?(item_name) == true
        resp.write "$3.42"
      else
      resp.write "Item not found"
      resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
