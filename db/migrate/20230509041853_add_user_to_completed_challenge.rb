# frozen_string_literal: true

class AddUserToCompletedChallenge < ActiveRecord::Migration[7.0]
  def change
    add_reference :completed_challenges, :user
  end
end
