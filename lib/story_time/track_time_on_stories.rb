module StoryTime
  module TrackTimeOnStories
    def self.story(time)
      story_id = story_id(time)
      project_id = project_id(time)
      Story.find(story_id, project_id)
    end

    def self.time_referencing_stories
      time = TimeTracker.time.all
      time.keep_if { |t| t.notes.match /#\d+/ }
      time
    end

    private
    def self.project_id(time)
      time_project = time_project(time)
      id = time_project.notes.match(/\[PT#(\d+)\]/)[1]
      id.to_i
    end

    def self.story_id(time)
      id = time.notes.match(/#(\d+)/)[1]
      id.to_i
    end

    def self.time_project(time)
      TimeTracker.projects.find(time.project_id)
    end
  end
end
