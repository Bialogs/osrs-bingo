FactoryBot.define do
  factory :game do
    title { "game_title" }
    discord_url { "game_discord" }
    video_url { "game_video" }
    twitter_url { "game_twitter" }
    number_of_teams { 10 }
    players_per_team { 5 }
    start_datetime { DateTime.now.utc}
    end_datetime { start_datetime + 30.days}
  end
end
