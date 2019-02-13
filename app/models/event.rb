class Event < ApplicationRecord
  has_many :comments
  has_many :bookmarks
  has_many :users, through: :bookmarks
end
