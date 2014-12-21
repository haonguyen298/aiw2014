class Tourist < ActiveRecord::Base
  mount_uploader :photo, PictureUploader
  has_many :kings
  has_many :dynasties

end
