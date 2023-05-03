# frozen_string_literal: true

class AddContentToRule < ActiveRecord::Migration[7.0]
  def change
    add_column :rules, :content, :rich_text
  end
end
