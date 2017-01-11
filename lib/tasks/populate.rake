require_relative '../../config/environment'

task :populate do
  Image.delete_all
  images = `ls app/assets/images`.split("\n")
  images.each do |image|
    puts image
    Image.create(filename: image)
  end
end