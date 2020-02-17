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
    validate :message_140_char

    def message_140_char
        if message.length > 140
            errors.add(:message, "message string must not be longer than 140 characters in length")
        end
    end
end
