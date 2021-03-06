class SessionsController < ApplicationController
  
  layout "session"
  
  skip_before_filter :authorize
  
  def new     
  end
  
  def create
    session[:user_id] = nil    
      user = User.authenticate(params[:password], params[:name])
      if user
        session[:user_id] = user.id
        redirect_to :controller => 'admin/posts', :action => 'index'
      else      
        flash[:note] = "Invalid user name/password"
        redirect_to :action => 'new'
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :controller => "sessions", :action => "new"
  end
  
  
end
