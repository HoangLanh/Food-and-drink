class UsersController < ApplicationController
  load_and_authorize_resource
  def show
  end
  
  def edit
  end

  def update
    if @user.update_attributes user_params
      flash[:update_success] = t "user.edit"
      sign_in(@user, bypass: true)
      redirect_to user_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit User::ATTRIBUTE_PARAMS
  end
end
