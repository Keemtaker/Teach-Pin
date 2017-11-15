class Product < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  class Product < ApplicationRecord
    has_attachment :photo
  end
end
