class AddChallengeToCompletedChallenge < ActiveRecord::Migration[7.0]
  def change
    add_reference :completed_challenges, :challenge
  end
end
