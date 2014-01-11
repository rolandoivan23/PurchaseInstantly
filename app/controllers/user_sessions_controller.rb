class UserSessionsController < ApplicationController
  before_filter :authenticate, :only => :destroy
   def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    if @user_session.save
      
      redirect_to articles_url
    else
      render :action => :new
    end
  end


  def destroy
    current_user_session.destroy
    @@access_token_egori = " "
    @@access_token_encuestas = " "
    redirect_to new_user_session_path
  end
end
