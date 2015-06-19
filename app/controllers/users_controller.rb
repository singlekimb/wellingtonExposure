class UsersController < ApplicationController
  before_filter :authorize_admin
  def index
     if params[:approved] == "false"
       @users = User.find_all_by_approved(false)
     else
       @users = User.all
     end
   end
  
  def edit
    @user = User.find(params[:id])
  end
   
  def destroy
       @user = User.find(params[:id])
       @user.destroy
       if @user.destroy
           redirect_to user_url, notice: "User deleted."
       end
     end
     
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
          format.html {redirect_to users_path, notice: 'Asset was successfully updated.' }
      else
          format.html {render action: 'edit', notice: 'Error' }
      end
    end
   end   
     
   def user_params
     params.require(:user).permit(:email, :approved)
   end   
end
