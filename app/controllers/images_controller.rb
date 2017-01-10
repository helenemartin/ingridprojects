class ImagesController < ApplicationController
  def self.random_five
    Image.first(5)   
  end
end
