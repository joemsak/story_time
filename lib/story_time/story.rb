require 'pivotal-tracker'

PivotalTracker::Client.token(ENV['PIVOTAL_USERNAME'],
                             ENV['PIVOTAL_PASSWORD'])

module StoryTime
  Story =  PivotalTracker::Story
end
