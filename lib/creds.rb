class Tweets
	class << self
		def client
			Twitter::REST::Client.new do |config|
				config.consumer_key        = "YOUR_CONSUMER_KEY"
			  	config.consumer_secret     = "YOUR_CONSUMER_SECRET"
			  	config.access_token        = "YOUR_ACCESS_TOKEN"
			  	config.access_token_secret = "YOUR_ACCESS_SECRET"
			end
		end
	end
end

class Investigate
	class << self
		def investigate domains
			inv = Investigate.new('YOUR_KEY')
			puts inv.categorization(domains, true)
		end
	end
end