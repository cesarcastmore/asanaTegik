Rails.application.config.middleware.use OmniAuth::Builder do
  provider :asana, ASANA_CONFIG['CLIENT_ID_ASANA'],  ASANA_CONFIG['CLIENT_SECRET_ASANA']
end
