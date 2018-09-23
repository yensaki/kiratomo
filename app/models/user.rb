class User < ApplicationRecord
  has_many :mycharas
  has_many :images
end
