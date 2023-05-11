# frozen_string_literal: true

class AddUsersToTeam < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :team
  end
end
