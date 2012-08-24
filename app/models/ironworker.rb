require 'iron_worker'

class HelloWorker < IronWorker::Base


    
def run()
#get the friends check for birthdays if they have a birthday send the message from the user_id
@c = Time.now
@birth = self.friends.select do |x|
if x.birthday == "#{c.month}/#{c.day}"  
  
  
  
end   
  
end
end


end