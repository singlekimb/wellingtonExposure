class Image < ActiveRecord::Base
  COLOURS = ["red", "orange", "yellow", "green", "blue", "purple"]

  mount_uploader :picture, PictureUploader
end
