class Mychara < ApplicationRecord
  has_many :mychara_images
  has_many :images, through: :mychara_images
end
