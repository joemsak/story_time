require 'dotenv'

require "story_time/version"
require "story_time/track_time_on_stories"
require "story_time/time_tracker"
require "story_time/story"

module StoryTime
  initialize_ticket_token

  def self.sync
    time.each do |time|
      story = TrackTimeOnStories.story(time)
      story.notes.create(text: "Recently tracked #{time.hours} hours")
    end
  end

  private
  def self.time
    TrackTimeOnStories.time_referencing_stories
  end

  def self.time_tracker_client
  end

  def self.initialize_ticket_token
    PivotalTracker::Client.token(ENV['PIVOTAL_USERNAME'],
                                 ENV['PIVOTAL_PASSWORD'])
  end

  def self.ticket_tracker_story
    PivotalTracker::Story
  end
end
