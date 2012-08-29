OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "217697998352875", "2104af93cedd0c88da37c5332afe4aef"	
end