class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: {case_sensitive: false}

  def self.from_omniauth(auth)
    find_or_create_by(email: auth.info.email) do |user|
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.provider = auth.provider
      user.uid = auth.uid
    end
  end
end
