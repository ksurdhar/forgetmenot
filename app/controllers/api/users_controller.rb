class Api::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.json { render json: @user }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :phone_number)
  end
end
