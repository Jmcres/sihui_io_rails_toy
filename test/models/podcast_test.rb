require 'test_helper'

class PodcastTest < ActiveSupport::TestCase
  test "has many user subscribers" do
    podcast = Podcast.create
    user_subscriber1 = User.create
    podcast.subscriptions.create(subscriber: user_subscriber1)
    user_subscriber2 = User.create
    podcast.subscriptions.create(subscriber: user_subscriber2)

    assert_equal(podcast.user_subscribers.length, 2)
    assert_equal(podcast.user_subscribers[0], user_subscriber1)
    assert_equal(podcast.user_subscribers[1], user_subscriber2)
  end

  test "has many bot subscribers" do
    podcast = Podcast.create
    bot_subscriber1 = Bot.create
    podcast.subscriptions.create(subscriber: bot_subscriber1)
    bot_subscriber2 = Bot.create
    podcast.subscriptions.create(subscriber: bot_subscriber2)

    assert_equal(podcast.bot_subscribers.length, 2)
    assert_equal(podcast.bot_subscribers[0], bot_subscriber1)
    assert_equal(podcast.bot_subscribers[1], bot_subscriber2)
  end  
end