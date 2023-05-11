# frozen_string_literal: true

class Game < ApplicationRecord
  validates :title, :number_of_teams, :players_per_team, :start_datetime, :end_datetime, presence: true

  validates :number_of_teams, :players_per_team, numericality: { greater_than_or_equal_to: 1 }

  validate :instance_is_singleton, :order_of_start_and_stop_date

  with_options dependent: :destroy do
    has_many :challenges
    has_many :teams
  end

  with_options dependent: :nullify do
    has_one :rule, class_name: "rules"
    has_many :users, through: :teams
  end

  after_commit { Rails.cache.delete('game_instance') }

  def self.instance
    Rails.cache.fetch('game_instance') { all.first }
  end

  def instance_is_singleton
    singleton = Game.all.first
    errors.add(:base, I18n.t('game.too_many')) if self != singleton && !singleton.nil?
  end

  def order_of_start_and_stop_date
    errors.add(:base, I18n.t('game.date_mismatch')) unless start_datetime < end_datetime
  end
end
