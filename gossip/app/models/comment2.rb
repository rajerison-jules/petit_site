class Comment2 < ApplicationRecord
  belongs_to :comment, polymorphic: true
  belongs_to :user
end
