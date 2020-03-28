require 'pry'
class Application
 
    def call(env)
      resp = Rack::Response.new
      current_time = Time.now.to_s.split(" ")
      statement = current_time[1].split(":")[0].to_i > 12
      if statement
        resp.write "Good Afternoon!"
      else
        resp.write "Good Morning!"
      end
      resp.finish
    end

   
  end