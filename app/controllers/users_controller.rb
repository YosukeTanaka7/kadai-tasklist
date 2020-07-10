class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

 def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを承認しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの承認に失敗しました。'
      render :new
    end
 end
  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
