class UsersController < ApplicationController
  def mypage
    user = User.find(params[:id])
    if user.present?
      @user_name = user.name
      @user_email = user.email
    else
      @user_name = ""
      @user_email = ""
    end
  end
end