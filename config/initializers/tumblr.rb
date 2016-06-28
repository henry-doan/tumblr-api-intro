if Rails.env.development?
	tumblr = "#{Rails.root}/config/tumblr.yml"
	if File.exists? tumblr
		config = YAML.load_file(tumblr)
		config.each { |key, value| ENV[key] = value }
	else
		raise "cp config/tumblr.yml.example config/tumblr.yml"
	end
end

Tumblr.configure do |config|
	config.consumer_key = ENV['CONSUMER_KEY']
	config.consumer_secret = ENV['CONSUMER_SECRET']
end