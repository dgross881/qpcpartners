# enviros = {
# 	:development => 'localhost:6379',
# 	:staging => 'redis://redistogo:847e887a578c417b8ff7475e6b014e4f@grouper.redistogo.com:9807/',
# 	:production => 'redis://redistogo:a7f7f4cd6ee9da60583f38ec45d41353@grouper.redistogo.com:9672/'
# }

enviros = {
	:development => {:host => 'localhost', :port => '6379'},
	:test => {:host => 'localhost', :port => '6379'},
	:production => {:host => 'redis://redistogo:847e887a578c417b8ff7475e6b014e4f@grouper.redistogo.com:', :port => '9807'}
}

Sidekiq.configure_server do |config|
  config.redis = enviros[Rails.env.to_sym]
end

Sidekiq.configure_client do |config|
  config.redis = enviros[Rails.env.to_sym]
end