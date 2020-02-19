# == Schema Information
#
# Table name: twitter_tweets
#
#  id         :bigint           not null, primary key
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TwitterTweetTest < ActiveSupport::TestCase

  test "twitter tweet cannot be more than 140 characters" do
    one = twitter_tweets(:one)
    assert one.valid?

    one.message = nil
    assert_not one.valid?

    one.message = ""
    assert_not one.valid?

    one.message = "          "
    assert_not one.valid? 
    
    one.message = "\t"
    assert_not one.valid?
  end

end
