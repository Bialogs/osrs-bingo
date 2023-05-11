# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { "first" }
    last_name { "last" }
    email { "test@example.com" }
    provider { "provider" }
    uid { "uid" }
    twitch_name { "twitch name" }

    factory :regular_user do
      admin { false }
    end

    factory :admin_user do
      admin { true }
    end
  end
end
