module Users
  class SessionsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:create]

    def create
      user = User.from_omniauth(request.env["omniauth.auth"])

      if user.persisted?
        session[:user_id] = user.id

        redirect_to root_url, notice: "You have signed in successfully!"
      else
        redirect_to root_url, alert: "There was a problem signing you in, please try again."
      end
    end

    def destroy
      session[:user_id] = nil

      redirect_to root_url, notice: "You have signed out successfully!"
    end
  end
end
