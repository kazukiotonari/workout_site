class UsersController < ApplicationController
  def mypage
    user = User.find(params[:id])
    if user.present?
      @user_name = user.name
      @user_height = user.height
      @user_weight = user.weight
      @user_fat_percentage = user.fat_percentage
      @user_musclemass = user.musclemass
      
    else
      @user_name = ""
      @user_height = ""
      @user_weight = ""
      @user_fat_percentage = ""
      @user_musclemass = ""
    end
  end
end