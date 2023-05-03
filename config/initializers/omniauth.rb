Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['1085205208543-s931q04pop1buohoucfb8hh0q56ncl26.apps.googleusercontent.com'], ENV['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']
end
