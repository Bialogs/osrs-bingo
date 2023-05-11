# frozen_string_literal: true

class CreateCompletedChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :completed_challenges do |t|
      t.timestamps
    end
  end
end
