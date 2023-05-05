if defined?(AnyLogin)
  AnyLogin.setup do |config|
    config.enabled = Rails.env.development?
    config.limit = 100
  end
end
