# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Authentication

  before_action :authenticate_user!

  def authenticate_user!
    return if Current.user

    redirect_to root_path, alert: 'You need to sign in before continuing.'
  end
end
