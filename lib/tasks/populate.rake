require_relative '../../config/environment'
require 'pry'

task :populate do
  Image.delete_all
  ImageCaption.delete_all
  images = `ls app/assets/images`.split("\n").reject{|jpg| jpg =~ /ingridmap/}
  # images.delete('ingridmap.jpg')
  image_captions = `ls app/assets/text`.split("\n")
  pairs = images.zip image_captions
  
  pairs.each do |pair|
    puts pair
    i = Image.create(filename: pair[0])
    if pair[1]
      body= File.read(File.join(Rails.root, "app", "assets", "text", pair[1]))
      ImageCaption.create(body: body, image: i)
    end
  end
end