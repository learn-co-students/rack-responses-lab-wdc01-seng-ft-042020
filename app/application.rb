class Application

    def call(env)
        resp = Rack::Response.new
        
        time = Time.now 
        if time.hour < 12 
        resp.write "/Morning/i"
        else
        resp.write "/Afternoon/i!"
        end

        resp.finish
    end
end
