class AddRulesToGame < ActiveRecord::Migration[7.0]
  def change
    add_reference :rules, :game
  end
end
