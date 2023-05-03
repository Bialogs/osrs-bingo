# frozen_string_literal: true

class CreateChallenge < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.integer :points
      t.string :title
      t.timestamps
    end
  end
end
