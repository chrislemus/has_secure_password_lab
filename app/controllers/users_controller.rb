class UsersController < ApplicationController
  def create
    # @user = User.new(user_params)
    # redirect_to(controller: 'users', action: 'new') unless @user.password == @user.password_confirmation
    # @user.save
    # session[:user_id] = @user.id

    @user = User.create(user_params)
    return redirect_to controller: 'users', action: 'new' unless @user.save
    session[:user_id] = @user.id
    redirect_to '/welcome'
  end

  def new
    @user = User.new
  end

  def home
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
