class Image < ActiveRecord::Base
  belongs_to :user
  
  COLOURS = ["red", "orange", "yellow", "green", "blue", "purple"]

  mount_uploader :picture, PictureUploader
  
end
