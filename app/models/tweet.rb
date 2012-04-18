class Tweet < ActiveRecord::Base
  attr_accessible :author, :body, :tweeted_on, :tweetid
  include Tire::Model::Search
  include Tire::Model::Callbacks

  mapping do
    indexes :id,         :index    => :not_analyzed
    indexes :body,       :analyzer => 'snowball', :boost      => 100
    indexes :author,     :analyzer => 'keyword'
    indexes :tweeted_on, :type     => 'date', :include_in_all => false
    indexes :tweetid,    :index    => :not_analyzed
  end
end
