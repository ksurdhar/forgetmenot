class Api::SessionsController < ApplicationController
  before_action :require_signed_out!, :only => [:new, :create]
  before_action :require_signed_in!, :only => [:destroy]

  def new
  end

  def create
    @user = User.find_by_credentials(
      user_params[:username],
      user_params[:password]
    )

    if @user
      sign_in(@user)
      render json: @user
    else
      render json: @user.errors.full_messages, status: 402
      render "users/new"
    end
  end

  def destroy
    sign_out
    # flash[:info] = ["Goodbye!"]
    # render "sessions/new"
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :phone_number)
  end
end
