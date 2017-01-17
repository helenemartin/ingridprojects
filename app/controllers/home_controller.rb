class HomeController < ApplicationController
  def index
   @images=Image.all.shuffle.take(4)
  end
end
