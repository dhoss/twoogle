class Tweet < ActiveRecord::Base
  attr_accessible :author, :body, :tweeted_on, :tweetid
end
