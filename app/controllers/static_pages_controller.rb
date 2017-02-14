class StaticPagesController < ApplicationController
  include HTTParty
  # def start
  #   session[:oauth] = Koala::Facebook::OAuth.new('1853337078219954','6def2db69af01729c5fcb6078b7c2459', 'http://localhost:3000/callback/')
  #   binding.pry
  #   redirect_to session[:oauth].url_for_oauth_code(:permissions=>"user_events")
  # end

  # def callback
  #   session[:access_token] = session[:oauth].get_access_token(params[:code])
  #   redirect_to events_path(acc: session[:access_token])
  # end

  # def events
  #     # session[:access_token] = session[:oauth].get_access_token(params[:code])
  #     @api = Koala::Facebook::API.new(session[:acc])
  #     @events = @api.get_connections('me', '/events?type=created')

  #     # @token = $oauth.get_access_token(params[:code])
  #     # token = 'EAACEdEose0cBANtFOIqhH1JhQjROJdZAaW7zgH5B6Tmcmk266rr6jFAC75VA5iF8OPJbzPf4iYShiXmweDH6kmupBRl7n45IQhhI8NmuHe98bvV5KXZAPhyPJ9Qku8sw0h7i3w6SBqpEVZBUbgqRwQ4p5OW03AGMUXOcMZA9VgCWF3y4fr1xLlPrMZCJtsdYZD'
  #     # @graph = Koala::Facebook::API.new(@token)

  #     # @events = @graph.get_connections('me', '?fields=id,events{cover}')

  #   # @graph = Koala::Facebook::API.new('EAACEdEose0cBAOCD9xFcZCR5VRL37KocE1ZCZBWSrb3EnYJJ6WABooW8oZBSEfITZC7SlZCvzqztfRlLHxRTEWdkH7idIUnKffyTc3QBW1qywVQ9hNVClEVaSMCUxWUGPWn8RNv8lOr147P8DDnWrs3qZCIxt3FKDYZBrNVX0oCh6QZDZD')
  #   # @events = event.order(:date => :asc, :time => :asc) 
  # end

  def events
    @response = HTTParty.get("https://graph.facebook.com/v2.8/me/events?type=created&access_token=EAACEdEose0cBACPEPykYBg2jxZB9ctErpR3MlulvlMx6UApRreJB4NOl8TxNdsuoMAHjko7bmFi1805vhzKRNEcrIOhaLO4KKAcv7Umlf1yl1ag85QOLDIZBwTOZCrJotw3nA4jyYCxWmEGvzABB71q21fNspHKKiWnBgZCdMxT47e0iXlx2NfJd7RE4Ja4ZD")
    @events = JSON.parse(@response.body)

    @event_covers = HTTParty.get("https://graph.facebook.com/v2.8/me/events?fields=cover&type=created&access_token=EAACEdEose0cBAPYdm7xAyecp3W70ZAjUzCieNA8EgmS5kcB3NkOQ7yK4ZAJdCGCwhhAGcR1PIBGVoBvDdZBG4JrnZAMhIjkgsJCSNSACjbH5DAQGvUiBovRpgzPZBf4ZCpc9DRBZBLQiRZBFvZCUJz0qu6CkumVQZC6VxNqoozZBmsYicTh6ITOEPzf5dDYet1bxAQZD")
    @events_covers = JSON.parse(@event_covers.body)['events']
    
  end

  def about
  end
  
  def contact
  end
  

end
