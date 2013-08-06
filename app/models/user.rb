# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  email             :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  zip               :string(255)
#  authorization_id  :integer
#  t_nickname        :string(255)
#  t_follow_count    :integer
#  twitter_json      :text
#  tweets_authorized :integer
#  user_type         :string(255)
#  t_access_token    :string(255)
#  t_access_secret   :string(255)
#  uid               :integer
#

class User < ActiveRecord::Base
  attr_accessible :email, :zip, :tweets_authorized, :t_nickname, :t_follow_count, :t_access_token, :t_access_secret, :twitter_json, :user_type, :uid
  has_many :orders

  has_many :authorizations

  def self.update_with_omniauth(auth_hash,email)
    u = User.find_by_email(email)
    u.update_attributes(:uid => auth_hash['uid'], :t_nickname => auth_hash['info']['nickname'], :t_follow_count => auth_hash['extra']['raw_info']['followers_count'], :t_access_token => auth_hash['credentials']['token'], :t_access_secret => auth_hash['credentials']['secret'], :twitter_json => auth_hash.to_json)
    if(User.count <= 1)
 		  u.update_attribute(:user_type, "admin")
    else
      u.update_attribute(:user_type, "follower")
    end	
  end
  
  def self.update_with_authorization(uid,num_auths)
  	u = User.find_by_uid(uid)
  	u.update_attribute(:tweets_authorized, num_auths)
  end

  def self.total_followers
  	c = User.all.count
  	if users = User.all
  		users.each do |u|
  			c++

  			if u.tweets_authorized > 0 != nil
  				c += u.t_follow_count
  			end
  		end
  	end
  	return c

  end

end
