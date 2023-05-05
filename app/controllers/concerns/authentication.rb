module Authentication
  extend ActiveSupport::Concern

  included do
    before_action :authenticate
  end

  def clear_session
    session[:user_id] = nil
  end

  private

  def authenticate
    authenticated_user = User.find_by(id: session[:user_id])

    if authenticated_user
      Current.user = authenticated_user
    end
  end
end
