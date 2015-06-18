class UsersController < ApplicationController
  
    def index
       if params[:approved] == "false"
         @users = User.find_all_by_approved(false)
       else
         @users = User.all
       end
     end
    
     def destroy
         @users = User.find(params[:id])
         @users.destroy
         if @users.destroy
             redirect_to user_url, notice: "User deleted."
         end
       end    
end
