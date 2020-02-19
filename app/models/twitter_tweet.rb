# == Schema Information
#
# Table name: twitter_tweets
#
#  id         :bigint           not null, primary key
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TwitterTweet < ApplicationRecord
    validates :message, presence: true
end
