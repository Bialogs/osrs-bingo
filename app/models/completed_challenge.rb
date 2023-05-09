class CompletedChallenge < ApplicationRecord
  has_one_attached :proof

  belongs_to :team
  belongs_to :user
  belongs_to :challenge
end
