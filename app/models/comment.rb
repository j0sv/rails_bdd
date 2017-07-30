class Comment < ApplicationRecord
  belongs_to :article
  validates :name, presence: true
  validates :comment, presence: true
end
