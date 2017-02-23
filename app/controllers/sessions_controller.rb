class SessionsController < ApplicationController


  def new
  end

  def create
    user = User.where(name: params[:name]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Signed in successfully.'
    else
      flash.now.alert = 'Invalid name or password.'
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Signed out successfully.'
  end

end
