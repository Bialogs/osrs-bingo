# frozen_string_literal: true

class Challenge < ApplicationRecord
  has_one_attached :image

  validates :points, :title, presence: true

  validates :points, numericality: { greater_than_or_equal_to: 1 }
end
