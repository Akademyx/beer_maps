class SessionsController < ApplicationController
  def create
    @user = User.find_by(email:params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/beers'
    else 
      flash[:e] = "Invalid Combination"
      redirect_to :back
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end
