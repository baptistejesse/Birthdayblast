require 'iron_worker'

class HelloWorker < IronWorker::Base


    
def initialize(user)
#get the friends check for birthdays if they have a birthday send the message from the user_id
@user = user
@message = message
@linky = linky
@c = Time.now
@birth = @user.friends.select do |x|
if x.birthday == "#{c.month}/#{c.day}"  
@user.facebook { |fb| fb.put_wall_post("#{@message}",{name: x.name, linky:@linky }, x.fb_id)}
end   
  
end
end


end