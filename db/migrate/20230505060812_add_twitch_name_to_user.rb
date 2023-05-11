# frozen_string_literal: true

class AddTwitchNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :twitch_name, :string
  end
end
