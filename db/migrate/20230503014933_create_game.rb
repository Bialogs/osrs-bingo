# frozen_string_literal: true

class CreateGame < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :discord_url
      t.string :video_url
      t.string :twitter_url
      t.integer :teams
      t.integer :players_per_team
      t.timestamps
    end
  end
end
