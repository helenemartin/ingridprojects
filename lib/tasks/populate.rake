require_relative '../../config/environment'

task :populate do
  Image.delete_all
  ImageCaption.delete_all
  images = `ls app/assets/images`.split("\n")
  images.each do |image|
    puts image
    i = Image.create(filename: image)
    ic = ImageCaption.create(body: "test test caption cap", image: i)
    puts ic.body
  end
end