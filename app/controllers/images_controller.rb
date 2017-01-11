class ImagesController < ApplicationController
  def index
    Image.first(5)   
  end
end
