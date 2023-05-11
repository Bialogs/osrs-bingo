# frozen_string_literal: true

class CompletedChallenge < ApplicationRecord
  has_many_attached :proof

  belongs_to :team
  belongs_to :user
  belongs_to :challenge
end
