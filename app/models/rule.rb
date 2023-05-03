# frozen_string_literal: true

class Rule < ApplicationRecord
  has_rich_text :content
end
