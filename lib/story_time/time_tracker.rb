module StoryTime
  TimeTracker = Harvest.hardy_client(subdomain: ENV['HARVEST_SUBDOMAIN'],
                                     username: ENV['HARVEST_USERNAME'],
                                     password: ENV['HARVEST_PASSWORD'])
end
