Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 'da71f98a975aa7101208', '08830fe6eb2832530717e2b4da24effcfc269ce4'
end