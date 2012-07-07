class PopularsController < ApplicationController
  # GET /populars
  # GET /populars.json
  def index
    
    user = verify_user    
    
    @populars = user.media_popular(:count => 15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @populars }
    end
  end
  
end
