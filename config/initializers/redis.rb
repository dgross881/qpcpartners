Rails.env == "production" ?
	$redis = Redis.new(:host => 'localhost', :port => 6379) :
	$redis = Redis.new(:host => 'http://www.qpcpartners.com', :port => 6379)