class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username_and_password_digest(
      params[:user][:username],
      params[:user][:password_digest])

    if user
      sign_in(user)
      redirect_to links_url
    else
      flash.now[:errors] = ["Invalid username or password"]
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to new_session_url
  end
end
