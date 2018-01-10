class CreateImageCaptions < ActiveRecord::Migration
  def change
    create_table :image_captions do |t|
    t.belongs_to :image, index: true
    t.text :body
    t.timestamps
    end
  end
end
