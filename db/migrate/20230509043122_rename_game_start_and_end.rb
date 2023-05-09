class RenameGameStartAndEnd < ActiveRecord::Migration[7.0]
  def change
    rename_column :games, :start, :start_datetime
    rename_column :games, :end, :end_datetime
  end
end
