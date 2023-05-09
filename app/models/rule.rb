# frozen_string_literal: true

class Rule < ApplicationRecord
  has_rich_text :content

  with_options dependent: :nullify do
    belongs_to :game
  end
end
