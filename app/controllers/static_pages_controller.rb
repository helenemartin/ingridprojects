class StaticPagesController < ApplicationController

  def start
    session[:oauth] = Koala::Facebook::OAuth.new('1853337078219954','6def2db69af01729c5fcb6078b7c2459', 'http://localhost:3000/callback/')
    binding.pry
    redirect_to session[:oauth].url_for_oauth_code(:permissions=>"user_events")
  end

  def callback
    session[:access_token] = session[:oauth].get_access_token(params[:code])
    redirect_to events_path(acc: session[:access_token])
  end

  def events
      # session[:access_token] = session[:oauth].get_access_token(params[:code])
      @api = Koala::Facebook::API.new(session[:acc])
      @events = @api.get_connections('me', '/events?type=created')

      # @token = $oauth.get_access_token(params[:code])
      # token = 'EAACEdEose0cBANtFOIqhH1JhQjROJdZAaW7zgH5B6Tmcmk266rr6jFAC75VA5iF8OPJbzPf4iYShiXmweDH6kmupBRl7n45IQhhI8NmuHe98bvV5KXZAPhyPJ9Qku8sw0h7i3w6SBqpEVZBUbgqRwQ4p5OW03AGMUXOcMZA9VgCWF3y4fr1xLlPrMZCJtsdYZD'
      # @graph = Koala::Facebook::API.new(@token)

      # @events = @graph.get_connections('me', '?fields=id,events{cover}')

    # @graph = Koala::Facebook::API.new('EAACEdEose0cBAOCD9xFcZCR5VRL37KocE1ZCZBWSrb3EnYJJ6WABooW8oZBSEfITZC7SlZCvzqztfRlLHxRTEWdkH7idIUnKffyTc3QBW1qywVQ9hNVClEVaSMCUxWUGPWn8RNv8lOr147P8DDnWrs3qZCIxt3FKDYZBrNVX0oCh6QZDZD')
    # @events = event.order(:date => :asc, :time => :asc) 
  end


  def about
  end
  
  def contact
  end
  

end
