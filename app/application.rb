class Application

    def call(env)
        resp = Rack::Response.new
        if Time.now.to_a[2] > 11
            resp.write("Good Afternoon!")
        else
            resp.write("Good Morning!")
        end
        resp.finish 
    end

end