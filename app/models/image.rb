class Image < ApplicationRecord
  has_one_attached :file
  has_one :mychara_image
  has_one :mychara, through: :mychara_image
end
