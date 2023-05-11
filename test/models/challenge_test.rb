# frozen_string_literal: true
require 'test_helper'

class ChallengeTest < ActiveSupport::TestCase
  test 'can create challenge' do
    assert(build(:challenge).save)
  end

  test 'validates points are gte 1' do
    assert_not(build(:challenge, points: 0).save)
  end
end
