class Tourist < ActiveRecord::Base
  mount_uploader :photo, PictureUploader
  belongs_to :king
  belongs_to :dynasty

end
