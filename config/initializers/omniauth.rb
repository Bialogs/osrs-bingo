# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :openid_connect, {
    name: :google_oidc,
    scope: %w[openid email profile],
    response_type: :code,
    issuer: 'https://accounts.google.com',
    client_auth_method: 'query',
    discovery: true,
    uid_field: 'sub',
    client_options: {
      identifier: ENV.fetch('GOOGLE_OAUTH_CLIENT_ID', nil),
      secret: ENV.fetch('GOOGLE_OAUTH_CLIENT_SECRET', nil),
      redirect_uri: "#{Rails.env.development? ? 'http' : 'https'}://#{ENV.fetch('HOST_URL',
                                                                                nil)}/auth/google_oidc/callback"
    }
  }
end
