class StaticPagesController < ApplicationController
  def about
  end
  def contact
  end
  def events
    @graph = Koala::Facebook::API.new('EAACEdEose0cBALN29LTAxSJVZBSSxpPPSCfFHmDN44ratZBUbHWaUKyt0OJWivwO5vbAIr1gcj0YX1kDJdqjJvBhYX9aZAsu5Ci2rtjVfc6ubohOTt9O062ZBNZC0UL32G2lbZABs2IueGZAgFcZCNZAlVZCEFIsVhLa1h7xhqvnxZB5PBbBbcEVfnogaUCwep9ZCA4ZD')
  #   @graph = Koala::Facebook::API.new('EAACEdEose0cBAOCD9xFcZCR5VRL37KocE1ZCZBWSrb3EnYJJ6WABooW8oZBSEfITZC7SlZCvzqztfRlLHxRTEWdkH7idIUnKffyTc3QBW1qywVQ9hNVClEVaSMCUxWUGPWn8RNv8lOr147P8DDnWrs3qZCIxt3FKDYZBrNVX0oCh6QZDZD')
    @events = @graph.get_connections('me', 'events?type=created')
    # @events = @graph.get_connections('me', '?fields=id,events{cover}')
    # @events = event.order(:date => :asc, :time => :asc) 
  end
end
