class Post < ApplicationRecord
  belongs_to :user
  has_many :images
  accepts_nested_attributes_for :images
  validates :text, presence: true
end