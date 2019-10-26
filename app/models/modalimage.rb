class Modalimage < ApplicationRecord
  mount_uploader :image, ImageUploader
end
