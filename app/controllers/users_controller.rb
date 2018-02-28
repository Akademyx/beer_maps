class UsersController < ApplicationController
    def index
    end

    def new
    end

  def create
    @user = User.new(user_params)
    if @user.valid?
        @user.save
        session[:user_id] = @user.id
        redirect_to '/songs'
    else
        flash[:error]= @user.errors.full_messages
        redirect_to :back
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password, :password_confirmation)
  end
end
