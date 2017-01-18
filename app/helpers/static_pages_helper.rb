module StaticPagesHelper

def cover_for_event(event)
  @graph = Koala::Facebook::API.new('EAACEdEose0cBAOCD9xFcZCR5VRL37KocE1ZCZBWSrb3EnYJJ6WABooW8oZBSEfITZC7SlZCvzqztfRlLHxRTEWdkH7idIUnKffyTc3QBW1qywVQ9hNVClEVaSMCUxWUGPWn8RNv8lOr147P8DDnWrs3qZCIxt3FKDYZBrNVX0oCh6QZDZD')
  @events = @graph.get_object( "#{event}?fields=cover")
  @cover = @events["cover"]["source"]
end

end
