# frozen_string_literal: true

class Team < ApplicationRecord
  has_one_attached :logo
  has_one_attached :banner

  validates :name, presence: true

  with_options dependent: :nullify do
    has_many :users
    has_many :completed_challenges, through: :users
  end
end
