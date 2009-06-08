# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
  layout "niceuser"
  session :session_key => '_vshocolade_session_id'
  
  protect_from_forgery :secret => '260400fa60001aaf8e4767dfa94913cc'
  
  helper :all # include all helpers, all the time
  

end
