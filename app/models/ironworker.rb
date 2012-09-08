require 'iron_worker'

class HelloWorker < IronWorker::Base


    
def initialize(user)
#get the friends check for birthdays if they have a birthday send the message from the user_id
@user = user
Time.zone = 'Eastern Time (US & Canada)'
@c = Time.zone.now
@birth = @user.friends.map do |x|
if x.birthday == "#{day_length(@c.month)}/#{day_length(@c.day)}".to_s

@user.facebook { |fb| fb.put_wall_post("Happy Birthday #{x.name},enjoy!",{name: "", link: "http://open.spotify.com/track/4KstW0YjGxUA6aVA4uOBY1" }, x.fb_id)}
  

end   
end
end

private


def day_length(date)
if date.to_s.length == 1
return "0#{date}"
else
  date
end 
end



end