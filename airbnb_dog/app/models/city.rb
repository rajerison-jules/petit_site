class City < ApplicationRecord
  has_many :dogsitter
  has_many :dog
end
