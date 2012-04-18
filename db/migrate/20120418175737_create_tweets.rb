class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :tweetid
      t.string :body
      t.datetime :tweeted_on
      t.string :author

      t.timestamps
    end
  end
end
