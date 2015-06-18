class UsersController < ApplicationController
  before_filter :authorize_admin
    def index
       if params[:approved] == "false"
         @users = User.find_all_by_approved(false)
       else
         @users = User.all
       end
     end
end
