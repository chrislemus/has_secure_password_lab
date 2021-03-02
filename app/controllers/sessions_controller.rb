class SessionsController < ApplicationController

  # def create
  #   @user = User.find_by(name: params[:name])
  #   return head(:forbidden) unless @user && @user.authenticate(params[:password])
  #   session[:user_id] = @user.id
  # end

  def new
    
  end


  def create
    user = User.find_by(name: params[:user][:name])

    user = user.try(:authenticate, params[:user][:password])

    return redirect_to(controller: 'sessions', action: 'new') unless user

    session[:user_id] = user.id

    @user = user

    redirect_to '/home'
  end
end