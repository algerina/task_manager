class AccessController < ApplicationController
 # display menu
 def menu
  @username = cookies[:username]
 end

 # display login form
 def new
 end

 # processs login form
 def create
   # do login process here
   redirect_to(menu_path)
   cookies[:username] = params[:username] 
 end

 # logout user
 def destroy
   # do logout process here
   redirect_to(login_path)
 end

end

