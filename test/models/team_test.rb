# frozen_string_literal: true

class TeamTest < ActiveSupport::TestCase
  test 'can create team' do
    assert(build(:team).save)
  end
end
