class OauthController < ApplicationController
  
  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => Rails.configuration.CALLBACK)
  end
  
  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => Rails.configuration.CALLBACK)
    session[:access_token] = response.access_token
    redirect_to "/feeds"
  end

end