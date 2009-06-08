class ProtectedController < ApplicationController
  
  layout "niceadmin"
  before_filter :authorize

   # See ActionController::RequestForgeryProtection for details
   # Uncomment the :secret if you're not using the cookie session store
   
   # See ActionController::Base for details 
   # Uncomment this to filter the contents of submitted sensitive data parameters
   # from your application log (in this case, all fields with names like "password"). 
   filter_parameter_logging :password, :password_confirmation

   protected 

   def authorize 
     unless User.find_by_id(session[:user_id])
       flash[:notice] = "Please log in" 
       redirect_to new_session_path
     end 
   end
  
end
