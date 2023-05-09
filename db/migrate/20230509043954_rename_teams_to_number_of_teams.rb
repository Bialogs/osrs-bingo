class RenameTeamsToNumberOfTeams < ActiveRecord::Migration[7.0]
  def change
    rename_column :games, :teams, :number_of_teams
  end
end
