class PhotosController < ApplicationController
  # GET /photos
  # GET /photos.json
  def index
    user = verify_user
    
    @photos = user.user_recent_media
    
    #logger.debug "#{@photos.to_yaml}"
    
    #session[:next_url_photos] = @photos.pagination.next_max_id
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end
  
  def more
    #user = verify_user
    
    #@photos = user.user_media_feed(:count => 15, :max_id => session[:next_url_photos])
    #session[:next_url_photos] = @photos.pagination.next_max_id
       
    #render :template => "photos/index"
    
  end
  def show
      user = verify_user
      
      @photo = user.media_item(params[:id])
      
      #images.standard_resolution - caption.text - location.name - link  - caption.from.username - caption.from.full_name
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @photo }
      end
  end
end
