class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = '感謝您的回覆！'
      redirect_to root_path
    else
      flash.now[:danger] = 'somthing wrong'
      render :new
    end  
    
  end

  private
  def user_params
    params.require(:user).permit(:email)  
  end
end
