$:.unshift File.dirname(__FILE__)

%w( rubygems vimilicious twitter ).each { |lib| require lib }

class VimTwitter
  def initialize email, password
    @twit = Twitter::Base.new email, password
  end

  def tweets
    # @twit.timeline.each { |tweet| puts tweet.text, tweet.user.name }
  end

  def tweet message
    @twit.update message.to_s unless message.to_s.strip.empty? or message.to_s.length > 140 
  end
end

def twit
  
end

def tweets

end

def tweet
  
end
