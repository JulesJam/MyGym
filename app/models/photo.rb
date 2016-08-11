class Photo < ApplicationRecord
  belongs_to :User, class_name: "User", foreign_key: "user_id"

  mount_uploader :image, PhotoImageUploader
end
