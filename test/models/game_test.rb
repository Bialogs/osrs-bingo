# frozen_string_literal: true

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  test 'can create game' do
    assert(build(:game).save)
  end

  test 'validates start before stop' do
    assert_not(build(:game, start_datetime: ::DateTime.now.utc + 30.days, end_datetime: ::DateTime.now.utc).save)
  end
end
