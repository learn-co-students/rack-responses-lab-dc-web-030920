require 'time'

class Application
    def call(env)
        resp = Rack::Response.new

        noon = Time.parse("12:00")
        if Time.now < noon
            resp.write  "Good Morning!"
        else 
            resp.write "Good Afternoon!"
        end

        resp.finish 
    end
end