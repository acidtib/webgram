class FeedsController < ApplicationController
  # GET /feeds
  # GET /feeds.json
  def index
    ## verify login logger.debug ">>>>>>> #{user.access_token}"    
    user = verify_user
    
    @feeds = user.user_media_feed(:count => 15) 
    
    logger.debug ">>>>>> #{@feeds.to_yaml}"
    session[:next_url] = @feeds.pagination.next_max_id
            
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feeds }
    end
  end
  
  def get_feeds
    
    user = verify_user
    @feeds = user.user_media_feed(:count => 15, :max_id => session[:next_url])
    session[:next_url] = @feeds.pagination.next_max_id
        
    respond_to do |format|
      format.json { render json: @feeds.data }
    end
  end
  
  def more
    user = verify_user
    @feeds = user.user_media_feed(:count => 15, :max_id => session[:next_url])
    session[:next_url] = @feeds.pagination.next_max_id
       
    render :template => "feeds/index"
    
  end
end
