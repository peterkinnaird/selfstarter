class UsersController < ApplicationController

	def new
	end

	def create


  	auth_hash = request.env['omniauth.auth']

    user = User.update_with_omniauth(auth_hash, session[:email])
    authorization = Authorization.create(:provider => auth_hash['provider'], :uid => auth_hash['uid'])
    session[:uid] = auth_hash['uid']


    render("/users/donate")

	end

	def twitter(uid)
		Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
    end
    return t = Twitter::Client.new(
      :oauth_token => User.find_by_uid(uid).t_access_token,
      :oauth_token_secret => User.find_by_uid(uid).t_access_secret
    )
  end

	def follow
		twitter(session[:uid]).follow(User.find_by_user_type("admin").uid)
	end

	def followers
		user = User.update_with_authorization(session[:uid],1)
		render("/users/followers")
	end

end
