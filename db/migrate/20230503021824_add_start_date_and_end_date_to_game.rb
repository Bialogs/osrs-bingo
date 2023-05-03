# frozen_string_literal: true

class AddStartDateAndEndDateToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :start, :datetime
    add_column :games, :end, :datetime
  end
end
