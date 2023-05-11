# frozen_string_literal: true

class AddTeamToCompletedChallenge < ActiveRecord::Migration[7.0]
  def change
    add_reference :completed_challenges, :team
  end
end
