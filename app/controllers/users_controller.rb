class UsersController < ApplicationController
  layout false
  def new
  end

  def create
    user_params = params.require(:user).permit(:account,:email,:password,:phone)
    user = User.create(user_params)
    if user.persisted?
       redirect_to root_path
     else
       render 'new'
     end
  end

end
