class User < ApplicationRecord
  belongs_to :city

  has_many :potins
  has_many :tags
  has_many :comments
  has_many :mps
  has_many :likes

end
