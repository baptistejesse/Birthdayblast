class User < ActiveRecord::Base
  has_many :friends
  has_many :birthdays

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :username

 
                 
                  def self.from_omniauth(auth, signed_in_resource=nil)
                    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
                      user.provider = auth.provider
                      user.nickname = auth.info.nickname
                      user.uid = auth.uid
                      user.email = auth.info.email
                      user.password = Devise.friendly_token[0,20]
                      user.username = auth.info.name
                      user.pic = auth.info.image
                      user.oauth_token = auth.credentials.token
                      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
                      user.save!
                    end
                  end

          
             def get_birthdays
                  facey.map do |x|
                   self.friends.create(name: x['name'], fb_id: x['id'], birthday: x['birthday'], usernmame: x['username'], friend_pic: x['picture']['data']['url'])
                 end 
               end       
                  
                  def facebook
                    @facebook ||= Koala::Facebook::API.new(oauth_token)
                    block_given? ? yield(@facebook) : @facebook
                  rescue Koala::Facebook::APIError => e
                    logger.info e.to_s
                    nil # or consider a custom null object
                  end

               #a.facey.map { |i| puts i}.flatten
       
       
        
          def facey
           @facey = facebook { |fb| fb.get_connection("me", "friends", "fields"=>"birthday,name") }
            return @facey  
          end  
           
      end