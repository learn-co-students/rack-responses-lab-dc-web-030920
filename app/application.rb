require 'pry'
class Application

    def call(env)
        result = Rack::Response.new
        t1 = Time.now
      
        if t1.hour <= 12
            result.write "Good Morning!"
        else
            result.write "Good Afternoon!"
        end
        
        result.finish      
    end
end