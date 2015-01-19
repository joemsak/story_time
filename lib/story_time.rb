require "story_time/version"
require "story_time/track_time_on_stories"
require "story_time/time_tracker"
require "story_time/story"

module StoryTime
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
end
