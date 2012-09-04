class User < ActiveRecord::Base
  
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.image = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
  
  def self.update_records 
    User.all.each do |user|
      begin
      graph = Koala::Facebook::API.new(user.oauth_token)
      rescue Koala::Facebook::APIError
        logger.info e.to_s
        nil
      end  
      records = graph.get_object("me")
      user.name = records["name"]
      user.email = records["email"]
      user.image = graph.get_picture("me")
      user.save!
    end
  end  
  
end
