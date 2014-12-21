class King < ActiveRecord::Base
  mount_uploader :photo, PictureUploader
  belongs_to :dynasty
  has_many :tourists
end
