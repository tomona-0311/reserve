class Room < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
belongs_to:reservation
end
