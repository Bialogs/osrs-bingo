# frozen_string_literal: true

class AddChallengesToGame < ActiveRecord::Migration[7.0]
  def change
    add_reference :challenges, :game
  end
end
