class Application 

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items"
      resp.write "You correct"
    else
      resp.write "you are lost"
      resp.status == 404
    end
    resp.finish
  end
end

  