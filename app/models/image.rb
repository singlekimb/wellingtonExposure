class Image < ActiveRecord::Base
  belongs_to :user
  before_save :link_user
  
  COLOURS = ["red", "orange", "yellow", "green", "blue", "purple"]

  mount_uploader :picture, PictureUploader
  
  def link_user
    self.user_id = current_user.id
  end
  
end
