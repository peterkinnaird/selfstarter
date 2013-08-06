class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin
  helper_method :current_user
  
 private

  def admin
    if current_user || session[:uid]
      return User.find(session[:uid]).user_type == "admin"
    else
      return false
    end
  end

  def master_user
    return User.find_by_user_type("admin")
  end

  def current_user
  	return session[:uid]
  end	

end
