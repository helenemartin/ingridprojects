class HomeController < ApplicationController
  def index
   @images=Image.all.shuffle.take(5)
  end
end
