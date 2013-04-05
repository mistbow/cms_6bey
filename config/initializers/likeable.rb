Likeable.setup do |likeable|
  uri = URI.parse(ENV["REDISTOGO_URL"] || "redis://localhost:6379/" )
  likeable.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
end
