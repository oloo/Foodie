OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV["217697998352875"], ENV["2104af93cedd0c88da37c5332afe4aef"], :display => "popup"	
end