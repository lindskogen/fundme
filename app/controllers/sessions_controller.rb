class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:session][:username])

    if user.authenticate(params[:session][:password])
      # Save the user ID in the session so it can be used in
      # subsequent requests
      session[:current_user_id] = user.id
      redirect_to root_url, notice: "You have successfully signed in."
    end
  end

  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url, notice: "You are signed out."
  end
end
