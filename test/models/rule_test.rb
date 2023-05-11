# frozen_string_literal: true

require 'test_helper'

class RuleTest < ActiveSupport::TestCase
  test 'can create rule' do
    assert(build(:rule, game: create(:game)).save)
  end
end
