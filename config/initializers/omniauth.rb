OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['217697998352875'], ENV['2104af93cedd0c88da37c5332afe4aef'], {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}, :display => "popup"	
end