# frozen_string_literal: true

class AddTeamsToGame < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :game
  end
end
