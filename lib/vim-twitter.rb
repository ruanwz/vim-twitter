$:.unshift File.dirname(__FILE__)

%w( rubygems vimilicious twitter ).each { |lib| require lib }

# @twit = Twitter::Base.new email, password
# @twit.timeline.each { |tweet| puts tweet.text, tweet.user.name }
# @twit.update message.to_s unless message.to_s.strip.empty? or message.to_s.length > 140 
# ruby email = vim_eval('input("email: ")') ... prompt

def twit
  $global_twitter_client ||= Twitter::Base.new prompt('twitter email'), prompt('twitter password') if $global_twitter_client.nil?
end

def tweets *args
  clear
  set_current_line 'tweets:'
  twit.timeline.each do |tweet|
    append "  [#{ tweet.user.name }]"
    append "    #{ tweet.text }"
  end
end

def tweet text
  unless text.nil? or text.to_s.strip.empty? or text.to_s.length > 140
    begin
      twit.update(text)
      puts 'tweeted successfully'
    rescue
      puts 'there was a problem tweeting!'
    end
  else
    puts "invalid tweet message ... make sure your tweet length is between 1 and 141 characters"
  end
end

create_command :tweet
create_command :tweets
