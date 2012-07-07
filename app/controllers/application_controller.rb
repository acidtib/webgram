class ApplicationController < ActionController::Base
  protect_from_forgery
  
  Instagram.configure do |config|
    config.client_id = Rails.configuration.CLIENT_ID
    config.client_secret = Rails.configuration.SECRET_ID
  end
  
  def verify_user    
    @user = Instagram.client(:access_token => session[:access_token])
    
    if @user.access_token === nil 
      redirect_to :controller => "oauth", :action => "connect"        
    else
      return @user
    end  
  end
end
