#note: manually created

$redis = Redis.new(:host => 'localhost', :port => 6379) if Rails.env.development?
$redis = Redis.new(url: ENV["REDIS_URL"]) if Rails.env.production?