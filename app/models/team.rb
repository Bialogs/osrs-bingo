# frozen_string_literal: true

class Team < ApplicationRecord
  validates :name, presence: true

  with_options dependent: :nullify do
    has_many :users
    has_many :completed_challenges, through: :users
  end
end
