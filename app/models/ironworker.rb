require 'iron_worker'

class HelloWorker < IronWorker::Base


    
def run(user,message)
#get the friends check for birthdays if they have a birthday send the message from the user_id
@c = Time.now
@birth = user.friends.select do |x|
if x.birthday == "#{c.month}/#{c.day}"  
@graph.put_wall_post("#{message}", "tmiley") 
  
end   
  
end
end


end