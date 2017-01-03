class Footbolist < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates_presence_of :image
  validates_presence_of :second_name
  validates_presence_of :name
end
