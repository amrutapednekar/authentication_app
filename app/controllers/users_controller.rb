class UsersController < ApplicationController

    def new
       # @user = User.new
     end
    
      def create
        @user = User.create(params.require(:user).permit(:username,:password))
        session[:user_id] = @user.id
        redirect_to '/welcome'
     end
    
     def login
      unless (params[:password] || params[:username]).blank?
          if authenticatated
            @username  = params[:username]
            render "show"
          else
            @error_message = "Authentication failed! Please enter correct credentials."
            render "/users/new"
          end
      end
     end
    
     def show
     end
    
     def logout
      @error_message = ""
      redirect_to "/users/new"
     end
    
     private
     def authenticatated
      if (params[:username]== "Ashish_Pednekar" && params[:password]== "secure" )
        return true
      elsif (params[:username]== "BITS" && params[:password]== "bits" )
        return true
      else
        return false
      end    
      end
end
