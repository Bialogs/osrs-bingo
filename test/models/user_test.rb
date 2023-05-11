require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'can create user' do
    assert(build(:regular_user).save)
  end
end
