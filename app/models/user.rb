class User < ApplicationRecord
  has_many :bookmarks
  has_many :events, through: :bookmarks
end
