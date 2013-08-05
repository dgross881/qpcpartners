enviros = {
	:development => 'localhost:6379',
	:staging => 'redis://redistogo:847e887a578c417b8ff7475e6b014e4f@grouper.redistogo.com:9807/',
	:production => 'redis://redistogo:847e887a578c417b8ff7475e6b014e4f@grouper.redistogo.com:9807/'
}

Sidekiq.configure_server do |config|
  config.redis = { :url => enviros[Rails.env] }
end

Sidekiq.configure_client do |config|
  config.redis = { :url => enviros[Rails.env] }
end