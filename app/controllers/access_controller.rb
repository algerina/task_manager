class AccessController < ApplicationController
skip_before_action :confirm_logged_in, only: [:new, :create]
  # display menu
 def menu
 end

 # display login form
 def new
  if logged_in?
    redirect_to(menu_path)
  end
 end

 # processs login form
 def create
   # do login process here
   logger.info("*** Login User #{params[:username]}")
   cookies[:username] = params[:username]
   session[:user_id] = 1483
   flash[:notice] = "Log in successful"
   redirect_to(menu_path)
 end

 # logout user
 def destroy
   # do logout process here
   logger.info("*** Logout User #{cookies[:username]}")
   cookies[:username] = nil
   session[:user_id] = nil
   flash[:notice] = "Logged out"
   redirect_to(login_path)
 end

end

