class UsersController < ApplicationController
  def new
    if current_user.nil?
      @user = User.new
    else
      redirect_to root_path, notice: "You are already signed in."
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.signup_confirmation(@user).deliver
      session[:user_id] = @user.id
      redirect_to root_path, notice: "You rule"
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :password_digest)
  end
end
