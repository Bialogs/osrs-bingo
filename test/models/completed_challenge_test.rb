# frozen_string_literal: true

require 'test_helper'

class CompletedChallengeTest < ActiveSupport::TestCase
  test 'can create completed_challenge' do
    assert(build(:completed_challenge,
                 challenge: create(:challenge),
                 team: create(:team),
                 user: create(:regular_user)).save)
  end
end
