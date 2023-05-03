# frozen_string_literal: true

class Challenge < ApplicationRecord
  validates :points, :title, presence: true

  validate :points, numericality: { greater_than_or_equal_to: 1 }
end
