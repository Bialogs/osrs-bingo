# frozen_string_literal: true

class CreateRules < ActiveRecord::Migration[7.0]
  def change
    create_table :rules, &:timestamps
  end
end
